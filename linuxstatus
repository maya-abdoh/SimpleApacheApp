#!/bin/bash
    function welcom(){
     clear
    echo "Welcome to LunixStatus!"       
    echo "Current Date: $(date)" to print date
    echo "Current User: $(whoami)" to print the curent user
    echo "Linux Version: $(uname -a)" to print linux verion
    echo "Please select an option:"
    echo "1. List running processes"
    echo "2. Check memory status and free memory in RAM"
    echo "3. Check hard disk status and free memory in HDD"
    echo "4. Check if Apache is installed and return its version"
    echo "5. Exit"
}
function  all_processes { //function to show all running process 
    ps aux //command to show all the process 
}

function check_memory {
    free -m  //this command to check memory state
}

function hard_disk {
    df -h //to check information of harddisk
}


function apache { 
    if ! command -v apache2 &> /dev/null //check apache if install
    then
        echo "Apache is not installed"
    else
        apache2 -v
    fi
}


function the_menu {
   
    echo "Please select an option:"
    echo "1. Back to main view"
    echo "2. Update the view"
    echo "3. Exit"
}


function main {
    welcome//function call
    read -p "Enter your choice: " choice
    case $choice in
        1)
            all_processes
            the_menu
            read -p "Enter your choice: " choice
            case $choice in
                1)
                    main
                    ;;
                2)
                    main
                    ;;
                3)
                    exit
                    ;;
                *)
                    echo "Invalid choice"
                    the_menu
                    ;;
            esac
            ;;
        2)
            check_memory
            the_menu
            read -p "Enter your choice: " choice
            case $choice in
                1)
                    main
                    ;;
                2)
                    main
                    ;;
                3)
                    exit
                    ;;
                *)
                    echo "Invalid choice"
                       the_menu
                    ;;
            esac
            ;;
        3)
            hard_disk
            the_menu
            read -p "Enter your choice: " choice
            case $choice in
                1)
                    main
                    ;;
                2)
                    main
                    ;;
                3)
                    exit
                    ;;
                *)
                    echo "Invalid choice"
                    the_menu
                    ;;
            esac
            ;;
        4)
            apache
            the_menu
            read -p "Enter your choice: " choice
            case $choice in
                1)
                    main
                    ;;
                2)
                    main
                    ;;
                3)
                    exit
                    ;;
                *)
                    echo "Invalid choice"
                    the_menu
                    ;;
            esac
            ;;
        5)
            exit
            ;;
        *)
            echo "Invalid choice"
            main
            ;;
    esac
}


for arg in "$@"
do
    case $arg in
        p)
            all_processes
            exit
            ;;
        r)
            check_memory
            exit
            ;;
        h)
            hard_disk
            exit
            ;;
        a)
            apache
            exit
            ;;
        *)
            echo "Invalid argument"
            exit
            ;;
      esac
 done           
            ;;
    esac
done
