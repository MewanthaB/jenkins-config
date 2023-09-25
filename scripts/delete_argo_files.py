import os
import shutil

# Define the top-level directory to start the search
top_directory = "C:\\WORK\\inc\\argorepos"

# Loop through the top-level directory
for root, dirs, files in os.walk(top_directory):
    for dir_name in dirs[:]:  # Iterate over a copy of dirs to modify it safely
        if dir_name == "kube-manifests-qa-argo":
            folder_path = os.path.join(root, dir_name)
            try:
                # Remove the folder and its contents
                shutil.rmtree(folder_path)
                print(f"Deleted folder: {folder_path}")
            except Exception as e:
                print(f"Error deleting folder {folder_path}: {e}")

print("Done")
