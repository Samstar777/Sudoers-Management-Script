# Sudoers-Management-Script

This script is designed to manage the sudoers file on macOS. It removes non-root users from the sudoers file, ensuring that only the root user retains sudo privileges.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/sudoers-management-script.git

2. Navigate to the script directory:

   ```bash
   cd sudoers-management-script

3. Make the script executable:

   ```bash
   sudo ./sudoers_management.sh

## Features

Checks if the script is run with root privileges.
Ensures that the root user is in the sudoers file.
Removes non-root users from the sudoers file.
Logging

The script logs its activities to /var/log/sudoers_script.log.

# Using the Sudoers Management Script with Jamf Pro

This guide will walk you through the process of deploying and using the Sudoers Management Script with Jamf Pro to manage the sudoers file on macOS.

## Prerequisites
   **Jamf Pro Account**: Ensure you have access to a Jamf Pro account.

   **Script Repository**: Clone the Sudoers Management Script repository to your local machine.
   
## Deployment Steps

1. Upload the Script to Jamf Pro:
      - Log in to your Jamf Pro account.
      - Navigate to "Scripts" in the left sidebar.
      - Click the "New" button to create a new script.
      - Fill in the required details, and paste the contents of the sudoers_management.sh script into the script editor.
      - Save the script.
   
1. Create a Policy:
      - Navigate to "Policies" in the left sidebar.
      - Click the "New" button to create a new policy.
      - Fill in the required details, and go to the "Scripts" tab.
      - Add the script you uploaded in step 1 to the list of scripts to be executed.
      - Configure other settings as needed (e.g., execution frequency, triggers).
   
1. Deploy the Policy:
      - Add Target Scope
      - Save the policy.
      - Trigger the policy manually in Self Service or set it for push deployment.
        
## Monitoring
You can monitor the script's activities by checking the log file located at **/var/log/sudoers_script.log** on the target machines.

## Disclaimer
This script is provided as-is, without any warranty. Test it thoroughly in a safe environment before deploying it to production.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


