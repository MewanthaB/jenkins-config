import os

folder_path = "C:\\WORK\\inc\\argorepos"
directory_list = []

for item in os.listdir(folder_path):
    item_path = os.path.join(folder_path, item)
    if os.path.isdir(item_path):
        directory_list.append(item)

for folder in directory_list:
    dockerfile_path = os.path.join(folder, "deploy/docker/Dockerfile")
    
    if os.path.exists(dockerfile_path):
        with open(dockerfile_path, "r") as f:
            lines = f.readlines()

        updated_lines = []
        added_lines = False

        for line in lines:
            updated_lines.append(line)
            if line.strip().startswith("LABEL org.opencontainers.image.licenses=Incentivio"):
                updated_lines.append("\n")
                updated_lines.append("RUN yum -y update && \\\n")
                updated_lines.append("    yum -y install iproute && \\\n")
                updated_lines.append("    yum clean all\n")
                added_lines = True

        if not added_lines:
            updated_lines.append("\n")
            updated_lines.append("RUN yum -y update && \\\n")
            updated_lines.append("    yum -y install iproute && \\\n")
            updated_lines.append("    yum clean all\n")

        with open(dockerfile_path, "w") as f:
            f.writelines(updated_lines)

        print(f"Updated Dockerfile in {folder}")
    else:
        print(f"No Dockerfile found in {folder}")
