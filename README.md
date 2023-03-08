first script :
sudo mv lunixstatus.sh lunixstatus  to rename  afiled name lunixstatus.sh to lunixstatus



add script to lunix path 
sudo chmod +x lunixstatus to give permation .












second script:
crontab -e
add new line at the end of file :0 0 * * */script2.sh to run at midnight everyday
exit thecrontab file
crontab -I to ensure that the corntab
