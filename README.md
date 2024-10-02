# SuperDebMaint (Supercalifragilisticexpialidocious Debian Daily Maintenance Script)

## Project Overview:
SuperDebMaint is a fun, over-the-top project designed just for kicks, while still being functional in automating essential daily maintenance tasks on Debian-based systems (including Ubuntu). Whether you're a seasoned sysadmin or a casual Linux user, SuperDebMaint runs `update`, `upgrade`, and `autoremove` commands with one command to ensure your system is always up-to-date and clutter-free—with a little style while saving you some typing.

---

## Features:
* **Progress Bars:** Visual progress bars are included to give a fun, retro feel as each task is processed.
* **Simple Commands:** Automates the core system maintenance commands `apt update`, `apt upgrade`, and `apt autoremove`.
* **Delightful Prompts:** Light-hearted and friendly prompts throughout the script to keep things fun and engaging.
* **HR Divider:** A custom hr() function to add stylish dividers between tasks for readability.

---

## Requirements:
* A Debian-based Linux distribution (such as Ubuntu)
* Sudo privileges to run apt commands
* Bash shell (#!/bin/bash)

---

## How to Use:
* **Clone or Download the Script:** Download the script or clone the repository to your local machine.
* **Run the Script:** Open a terminal in the directory containing the script and execute the following command: `bash daily-maintenance.sh`
* **Observe the Magic:** The script will display progress bars and friendly messages as it runs the `update`, `upgrade`, and `autoremove` commands for your system. Just sit back and watch your system get the care it deserves, so it can slay another day!

---

## Script Walkthrough:

1. **Progress Bars:**
Each major step (updating, upgrading, and cleaning) is accompanied by a custom progress bar to visually show the script working through the commands.
2. **System Update:** The script begins by running `sudo apt update` to refresh the package lists and check for the latest available versions of your installed software.
3. **System Upgrade:** Next, it runs `sudo apt upgrade -y` to automatically apply all available upgrades without prompting for user confirmation.
4. **Clean-Up:** Finally, the script runs `sudo apt autoremove` to remove unnecessary packages that are no longer required.
5. **Completion:** After everything is done, the script displays a farewell message: “All finished. Have a nice day!”

---

## Example Output:
```
Initiating daily maintenance script....
[###################################] 100%
Initiated!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Preparing to update.
[###################################] 100%
Updating....
Update completed!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Preparing to upgrade.
[###################################] 100%
Upgrading....
Upgrade completed!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Preparing to clean up.
[###################################] 100%
Cleaning up....
Clean up finished!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Shutting down script....
[###################################] 100%
All finished. Have a nice day!
```

---

## Customization:

* **Progress Bar Speed:** You can modify the delay in the `progress_bar()` function by adjusting the `sleep 0.1` value if you’d like the progress to appear faster or slower.
* **HR Divider:** Customize the character used in the horizontal rule by changing the argument passed to `hr()` function, or modify the default symbol from `~`.

---

## Future Enhancements:
* **Custom Task Addition:** Support for user-defined maintenance tasks.
* **Notification System:** Integrating optional email or system notifications upon completion.
* **Configurable cron job setup:** Functionality to automatically set up a cron job for users. This feature would allow the script to schedule itself to run daily at a specified time without requiring manual configuration. Users would have the ability to define the desired time or use a default setting (e.g., 8:00 AM), streamlining the installation process.
    * **Potential Features:**
        1. **User-Defined Scheduling:** Provide an interactive option for users to input their preferred daily run time for the maintenance script.
        2. **Default Time Setting:** For users who don't want to specify a time, the script could default to a daily 8:00 AM execution.
        3. **Error Handling:** Implement robust error checks for system permissions and cron job conflicts.
        4. **Script Removal:** Add an option to remove the cron job if the user wishes to stop automatic execution.
This enhancement would make SuperDebMaint even more user-friendly by reducing setup effort and ensuring the script runs regularly for ongoing system maintenance.

---

## Disclaimer:
This script is meant for fun and convenience. Always review and understand any script you run on your system, especially ones that require sudo privileges.

Enjoy using SuperDebMaint and keep your Debian-based system maintained while having fun!

---

## Contributions and Feedback: 
Contributions are welcome! Feel free to submit pull requests or report issues if you have ideas on improving the project or expanding its functionality.