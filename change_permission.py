import os
import subprocess

def change_permissions(folder_path):
    # Iterate over all files in the folder
    for root, dirs, files in os.walk(folder_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)

            # Change permissions to 755 using sudo
            subprocess.run(["sudo", "chmod", "755", file_path])
            print(f"Changed permissions of {file_path} to 755")

if __name__ == "__main__":
    folder_path = input("Enter the folder path: ")

    if os.path.exists(folder_path):
        change_permissions(folder_path)
    else:
        print("Invalid folder path. Please provide a valid path.")