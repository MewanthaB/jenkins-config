import os
import subprocess

# Directory path to traverse
base_directory = "C:\\WORK\\inc\\argorepos"

# Git branch name
git_branch = "mewanthabandara/sc-220063/set-up-argocd-for-qa-environments"

# Commit message
commit_message = "Adding Jenkins code block for ArgoCD"

def process_directory(directory_path):
    # Change current working directory to the specified directory
    os.chdir(directory_path)

    # Run git commands
    subprocess.run(["git", "add", "."])
    subprocess.run(["git", "commit", "-m", commit_message])
    subprocess.run(["git", "push", "-u", "origin", git_branch])

    print(f"Finished processing {directory_path}")

# Traverse through the immediate subdirectories only
for entry in os.scandir(base_directory):
    if entry.is_dir():
        process_directory(entry.path)
