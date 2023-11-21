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

## Disclaimer

This script is provided as-is, without any warranty. Use it at your own risk.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


