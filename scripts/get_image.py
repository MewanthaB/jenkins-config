import boto3
from botocore.session import Session
import subprocess
import time

def get_latest_image_tag_with_name(repo_name, tag_name):
    session = boto3.session.Session(profile_name='inc-eks-prod')
    ecr = session.client('ecr')

    # List all image tags for the specified repository
    response = ecr.list_images(repositoryName=repo_name, filter={
                                                            'tagStatus': 'TAGGED'
                                                        })
    # Start with an empty list to store matching image tags
    matching_tags = []

    # Get the 'imageIds' key from the 'response' dictionary, or an empty list if it doesn't exist
    image_ids = response.get('imageIds', [])

    matching_tags = [image['imageTag'] for image in response.get('imageIds', []) if tag_name in image['imageTag']]

    # If matching tags are found, return the latest one; otherwise, return None
    if matching_tags:
        # Initialize variables to keep track of the largest build number and the corresponding image
        largest_build_number = -1
        latest_tag = None

        # Iterate through the list of matching_tags
        for image in matching_tags:
            # Split the image name by underscore and extract the build number
            build_number = int(image.split('_')[-1])
            if build_number > largest_build_number:
                largest_build_number = build_number
                latest_tag = image

        # Check if a valid largest build image was found
        if latest_tag is not None:
            print(f"The image with the largest build number is: {latest_tag}")
        else:
            print("No valid image found in the list.")
        return latest_tag
    else:
        return None

# Function to run a shell command and wait for it to complete
def run_shell_command(command):
    try:
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error running command: {command}")
        raise e

def deployWithArgoCD():
    # Command to scale up the EKS node grou p
    scale_command = "eksctl scale nodegroup --cluster=inc-qa-7 --nodes=6 --name=inc-qa-7-eks-ng-private --nodes-min=1 --nodes-max=8"

    # Command to check if nodes are ready
    check_nodes_command = "kubectl get nodes | grep -q 'Ready'"

    # Path to the "runn-al-modules.sh" file
    run_all_modules_script = "run-all-modules.sh"

    # Scale up the EKS node group
    run_shell_command(scale_command)

    # Wait for nodes to become ready
    while True:
        try:
            subprocess.check_call(check_nodes_command, shell=True)
            break  # All nodes are ready
        except subprocess.CalledProcessError:
            pass  # Some nodes are not ready yet
        time.sleep(10)  # Wait for 10 seconds before checking again

    # Execute commands from the "runn-al-modules.sh" file
    run_shell_command(f"bash {run_all_modules_script}")

def main():
    session = boto3.session.Session(profile_name='inc-eks-prod')
    ecr = session.client('ecr')

    repo_list = "repo_list"

    repos = []

    # Open the file for reading
    with open(repo_list, 'r') as file:
        # Read each line from the file and append it to the 'repos' list
        for line in file:
            # Remove leading and trailing whitespaces and add the line to the list
            repos.append(line.strip())

    images = []
    imageRepositoryNames = []

    # Create a mapping dictionary
    parts_mapping = {
        "incentivio-client-domain-boot": "inc-client-domain",
        "inc-offers-domain-boot": "inc-offers-domain",
        "inc-sms-connector": "inc-connector-sms",
        "incentivio-batch": "inc-batch",
        "incentivio-churn-service": "inc-churn-service",
        "incentivio-connect-domain": "inc-connect-domain",
        "incentivio-media": "inc-media",
        "incentivio-message-router": "inc-message-router",
        "incentivio-offer-distributor": "inc-offer-distributor",
        "inc-loyalty-boot": "inc-loyalty-domain",
        "incentivio-admin-api": "inc-admin-api",
    }

    for repo in repos:
        parts = repo.split('/')[-1].split('.git')[0]
        
        if parts in parts_mapping:
            parts = parts_mapping[parts]
        imageRepositoryNames.append(parts)

    print(imageRepositoryNames)

    # List all ECR repositories
    response = ecr.describe_repositories(repositoryNames=imageRepositoryNames)
    repositories = response['repositories']

    # Specify the tag name to search for
    tag_name_to_search = "sc-220063"

    for repo in repositories:
        repo_name = repo['repositoryName']

        # print(repo_name)
        latest_tag = get_latest_image_tag_with_name(repo_name, tag_name_to_search)
        if latest_tag:
            images.append(latest_tag)
    
    output_file = open("run-all-modules.sh", "w")

    for repo in repos:
        tag_name = ""
        repo_name = repo.split("/")[-1].replace(".git", "")
        for image in images:
            image_name = image.split("-v_")[0]
            if image_name == repo_name or (repo_name in parts_mapping and parts_mapping[repo_name] == image_name):
                tag_name = image.split("-v_")[1]
                
                # Create the formatted string
                if (repo_name == "inc-giftcard-service"):
                    tag_name = "argocd-workaround_2"
                formatted_string = (
                    f"argocd app create qa-7-{repo_name} "
                    f"--repo {repo} "
                    f"--revision {tag_name} "
                    "--project inc-qa-7 "
                    "--path deploy/kube-manifests-qa-argo "
                    "--dest-namespace inc-qa "
                    "--dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com "
                    "--directory-recurse "
                    "--upsert"
                )

                output_file.write(formatted_string)
                output_file.write("\n")

                deployment_string = (f"argocd app sync qa-7-{repo_name}")
                output_file.write(deployment_string)
                output_file.write("\n")

    output_file.close()

if __name__ == "__main__":
    main()
    deployWithArgoCD()

# Manually deploy:
# inc-batch - latest version not working :: master_46   inc-batch:inc-batch-v_sc-210755_2
# inc-event-store - Build error master_75 inc-event-store-v_sc-220063_6
# inc-payrisk-manager - build error  inc-payrisk-manager-v_inc-eks_10
# inc-loyalty-boot - wrong tag nc-loyalty-boot-v_sc-208010_9
# inc-surveys - error file :: master_112 - exists : master_112
# connector-incentivoorders - build error :: inc-eks_7  inc-connector-incentivoorders-v_inc-eks_8
# giftcard-service - Unrecognized option: --spring.profiles.active=qaeks :: 
# operational-metrics - no logs :: master_52 9440aacfb809d4e9688e8f3902309f4e4afe974e inc-operational-metrics-v_argocd-workaround_1
# persona - no logs :: master_7   v_argocd-workaround_1
# partner-api - error file :: master_223  inc-eks_28