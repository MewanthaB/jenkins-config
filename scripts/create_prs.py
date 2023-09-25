import os
import subprocess

# Directory containing the folders
base_directory = "C:\\WORK\\inc\\argorepos"

# List of folders
folders = os.listdir(base_directory)

# Source and target branches
source_branch = "mewanthabandara/sc-220063/set-up-argocd-for-qa-environments"
target_branches = ["master", "main"]

# Iterate through the folders
for folder in folders:
    folder_path = os.path.join(base_directory, folder)
    
    # Check if the folder is a directory
    if os.path.isdir(folder_path):
        for target_branch in target_branches:
            # Create the pull request
            try:
                subprocess.run([
                    "gh", "pr", "create",
                    "--base", target_branch,
                    "--head", source_branch,
                    "--title", f"ArgoCD modifications pull Request from {source_branch} to {target_branch}",
                    "--body", f"This is an automated pull request from {source_branch} to {target_branch}.",
                    "--repo", f"IncentivioInc/{folder}"  # Replace with your actual organization name
                ], check=True)
                print(f"Pull request created for {folder} from {source_branch} to {target_branch}")
                break  # Exit the loop if the pull request was successfully created
            except subprocess.CalledProcessError:
                print(f"Pull request creation failed for {folder} from {source_branch} to {target_branch}")
