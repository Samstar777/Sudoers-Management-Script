#!/bin/bash

# Sudoers Management Script
#
# Created on: November 20, 2023
#
# Creator: Samstar777

LOG_FILE="/var/log/sudoers_script.log"

# Function to log messages to the log file
log_message() {
  local message="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') $message" >> "$LOG_FILE"
}

# Function to check if the script is run with root privileges
check_root_privileges() {
  if [ "$EUID" -ne 0 ]; then
    echo "Please run with sudo or as root." >&2
    log_message "Error: Script executed without root privileges."
    exit 1
  fi
}

# Function to remove a user from the sudoers file
remove_user_from_sudoers() {
  local user="$1"
  if [ "$user" != "root" ] && grep -q "^$user" /etc/sudoers; then
    sed -i "" "/^$user/d" /etc/sudoers
    log_message "Removed $user from sudoers file."
  elif [ "$user" != "root" ] ; then
    log_message "$user is not in the sudoers file."
  fi
}

# Main function
main() {
  check_root_privileges

  # Get a list of local users in the admin group on macOS
  sudo_users=$(dscl . -read /Groups/admin GroupMembership | tr ' ' '\n' | tail -n +2)

  # Iterate through the list of sudo users
  for user in $sudo_users; do
    remove_user_from_sudoers "$user"
  done
}

# Run the main function and log any errors
main 2>> "$LOG_FILE"
