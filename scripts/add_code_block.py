import os
import subprocess
import git

# List of GitHub repos
repo_list = [
    "git@github.com:IncentivioInc/inc-conpay-heartland.git",
    "git@github.com:IncentivioInc/inc-conpay-moneris.git",
    "git@github.com:IncentivioInc/inc-conpay-spreedly.git",
    "git@github.com:IncentivioInc/inc-conpay-stripe.git",
    "git@github.com:IncentivioInc/inc-conpay-vantiv-omni.git",
    "git@github.com:IncentivioInc/inc-conpay-vantiv.git",
    "git@github.com:IncentivioInc/inc-conpos-brink.git",
    "git@github.com:IncentivioInc/inc-conpos-clover.git",
    "git@github.com:IncentivioInc/inc-conpos-lightspeed.git",
    "git@github.com:IncentivioInc/inc-conpos-revel.git",
    "git@github.com:IncentivioInc/inc-conpos-silverware.git",
    "git@github.com:IncentivioInc/inc-conpos-square.git",
    "git@github.com:IncentivioInc/inc-customer-support-service.git",
    "git@github.com:IncentivioInc/inc-email-bounce-manager.git",
    "git@github.com:IncentivioInc/inc-email-connector.git",
    "git@github.com:IncentivioInc/inc-event-store.git",
    "git@github.com:IncentivioInc/inc-external-users-import.git",
    "git@github.com:IncentivioInc/inc-failure-notifier.git",
    "git@github.com:IncentivioInc/inc-gift-ach-transfer-service.git"
]

# Configuration for the new branch and commit
new_branch = "mewanthabandara/sc-220063/set-up-argocd-for-qa-environments"
commit_message = "Automated ArgoCD block added"

# Code to be added at the beginning of the Jenkinsfile
code_to_add_at_beginning = '@Library("argocd-update-image") _\n'

# Code to be added before the post block
code_to_add = '''
        stage('Update image for ArgoCD'){
            steps{
                argocdUploadImage(DOCKER_IMAGE_REPO:DOCKER_IMAGE_REPO,GIT_BRANCH:GIT_BRANCH,BUILD_NUMBER:BUILD_NUMBER,BRANCH:BRANCH_NAME_FOR_DOCKER_BUILD,DOCKER_IMAGE_REPO_TAG:DOCKER_IMAGE_REPO_TAG)
            }
        }
    }

'''

# Iterate through the repo list
for repo_url in repo_list:
    # Clone the repository
    repo_dir = os.path.basename(repo_url).split(".git")[0]
    subprocess.run(["git", "clone", repo_url, repo_dir])

    # Switch to the new branch
    repo = git.Repo(repo_dir)
    repo.git.checkout("-b", new_branch)

    # Modify the Jenkinsfile
    jenkinsfile_path = os.path.join("C:\\WORK\\inc\\argorepos\\" + repo_dir, "Jenkinsfile")
    with open(jenkinsfile_path, "r") as f:
        jenkinsfile_content = f.read()

    # Insert code at the beginning of the Jenkinsfile
    new_jenkinsfile_content = (
        code_to_add_at_beginning
        + '\n'
        + jenkinsfile_content
    )

    # Find the post block and insert code before it
    post_block = 'post {'
    insert_index = new_jenkinsfile_content.find(post_block)
    if insert_index != -1:
        new_jenkinsfile_content = (
            new_jenkinsfile_content[:insert_index]
            + code_to_add
            + new_jenkinsfile_content[insert_index:]
        )

        with open(jenkinsfile_path, "w") as f:
            f.write(new_jenkinsfile_content)

        # # Add and commit the changes
        # repo.git.add(jenkinsfile_path)
        # repo.index.commit(commit_message)

        # # Push the changes to the new branch
        # repo.git.push("origin", new_branch)

        print(f"Finished updating and pushing to {repo_url}")
    else:
        print(f"Post block not found in {repo_url}. Skipping.")

print("All repositories updated and pushed.")
