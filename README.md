first script :
sudo mv lunixstatus.sh lunixstatus  to rename  afiled name lunixstatus.sh to lunixstatus

add script to lunix path :

Ensure that the script file "lunixStatus" has executable permissions by running the following command: sudo chmod +x LunixStatus

Create a directory named "bin" in your home directory by running the following command: mkdir $HOME/bin

Move the script file "LunixStatus" to the "bin" directory by running the following command: mv lunixStatus $HOME/bin/

Add the "bin" directory to your PATH environment variable by running the following command: echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

Refresh your bash profile to apply the changes by running the following command: source ~/.bashrc



second script:
1- Open a terminal and run the following command to edit the user's crontab file: crontab -e

2- Add a new line at the end of the file with the following syntax:
..
0 0 * * * /path/to/script2.sh

This line specifies that the script should run at midnight every day and redirect its output to a log file with a name that includes the current date.

ensure  the cronjob was added successfully by : crontab -l
