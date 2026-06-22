# user-management-with-zenity
GUI-based Linux user management using Bash and Zenity.

# Project Overview

Secure User Management with Zenity on Linux is a Bash shell scripting project that provides a simple and interactive graphical interface for managing Linux user accounts. The application uses Zenity to replace command-line operations with user-friendly pop-up dialogs, allowing administrators to easily add new users, change user passwords, and set account expiry dates. It integrates essential Linux commands such as useradd, chpasswd, id, and chage while performing input validation and displaying success or error messages. This project demonstrates Linux automation through Bash scripting and makes user administration more efficient, secure, and convenient.

# Tools Used and Their Role

1) Linux (Ubuntu) ->	Provides the operating system environment for user management.
2) Bash Shell Scripting	-> Implements the project logic and automates user management tasks.
3) Zenity	-> Creates graphical dialogs and menus for user interaction.
4) Terminal -> Executes the shell script and Linux administration commands.

# Implementation Steps

STEP 1: Install ZENITY (Installs the Zenity package required to create GUI 
dialog boxes.)

<img width="457" height="132" alt="image" src="https://github.com/user-attachments/assets/ea918f03-99cb-49b3-938c-c0d8177d008c" />

Step 2: Create Project Folder
Creates and opens a folder to store the project files.

<img width="440" height="63" alt="image" src="https://github.com/user-attachments/assets/568b8d97-8e12-42d4-98d1-d07cca189381" />

Step 3: Create the Shell Script
Opens a new shell script file for writing the PROGRAM

<img width="387" height="228" alt="image" src="https://github.com/user-attachments/assets/cc782462-5127-4ef6-8b61-a7889b120c17" />

<img width="363" height="439" alt="image" src="https://github.com/user-attachments/assets/2fbbf696-ee9e-4694-a66e-e21856b3a705" />

<img width="418" height="509" alt="image" src="https://github.com/user-attachments/assets/a10cf8e6-3839-4e37-ab9f-5400a946cc7b" />

<img width="385" height="212" alt="image" src="https://github.com/user-attachments/assets/39a25465-18df-42a4-8485-28317f1afd3b" />

<img width="352" height="291" alt="image" src="https://github.com/user-attachments/assets/192e63cd-e267-4707-8aa8-dd20be59f072" />

Step 4: Run the Script
Executes the user management application with administrator privileges.

<img width="347" height="207" alt="image" src="https://github.com/user-attachments/assets/723c4671-09ce-41b7-adde-ece63ac295f9" />

Enter the username and password to create a new Linux user account.

<img width="424" height="373" alt="image" src="https://github.com/user-attachments/assets/63f8379f-0b1b-4185-b49b-bb4b46d06d69" />

VERIFY IT THROUGH TERMINAL USING ID COMMAND

<img width="475" height="100" alt="image" src="https://github.com/user-attachments/assets/9ceab681-fb2a-4f4c-a269-395fd5adaec0" />

Enter an existing username and a new password to update the user's credentials.

<img width="398" height="231" alt="image" src="https://github.com/user-attachments/assets/d08e0fd3-af12-409f-a80f-492c801c5447" />

<img width="443" height="225" alt="image" src="https://github.com/user-attachments/assets/9c2196aa-0305-42f2-a58a-807807ed2667" />

VERIFY IT THROUGH CHECKING BOTH OLD PASSOWRD AND NEW APSSWORD BY SWITCHING THORIUGH STUDENT1 USER

<img width="400" height="126" alt="image" src="https://github.com/user-attachments/assets/cacfd6db-a521-412f-8284-ce03355584d0" />

Enter the username and expiry date to define when the account will expire.

<img width="404" height="199" alt="image" src="https://github.com/user-attachments/assets/3bd43c0e-1d95-40ea-a85e-7e7cea270077" />

Verify Expiry Date
Shows the configured account expiry date for the user

<img width="437" height="121" alt="image" src="https://github.com/user-attachments/assets/2cd00fab-c476-4a79-b70e-47138b7b7614" />








