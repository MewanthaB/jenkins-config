import os

folder_path = "C:\\WORK\\inc\\argorepos"
directory_list = []

for item in os.listdir(folder_path):
    item_path = os.path.join(folder_path, item)
    if os.path.isdir(item_path):
        directory_list.append(item)

# Iterate through the folders
for folder in directory_list:
    deployment_path = os.path.join(folder, "deploy/kube-manifests-qa/Deployment.yml")

    if os.path.exists(deployment_path):
        with open(deployment_path, "r") as file:
            deployment_content = file.read()

        # Check if the line already exists
        if "          - name: IP\n            valueFrom:\n              fieldRef:\n                fieldPath: status.podIP" not in deployment_content:
            # Find the line "command: ["sh"
            index = deployment_content.find("command: [\"sh\"")
            if index != -1:
                # Insert the new lines above the found line
                new_content = deployment_content[:index]
                new_content += "env:\n          - name: IP\n            valueFrom:\n              fieldRef:\n                fieldPath: status.podIP\n          "
                new_content += deployment_content[index:]
                
                # Write the updated content back to the file
                with open(deployment_path, "w") as file:
                    file.write(new_content)
