#!/bin/bash
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BOLD=$(tput bold)
REDBG=$(tput setab 1)
SUBRI=$(tput smul)
RESET=$(tput sgr0)

banner()
{
        clear
        echo "${WHITE}
┌───────────────────────────────────────────────────────────────┐
                   ${BOLD}[ @NobodyDev - Problems ] ${RESET}${WHITE}              
└───────────────────────────────────────────────────────────────┘${RESET}"
}

menu ()
{

clear
banner
echo -e "${WHITE}┌──────────────────────┐"
echo -e "${WHITE}│┗━━➤ 1│➕SOMAR                                          "
echo -e "${WHITE}│┗━━➤ 2│➖SUBTRAÇAO                                  "
echo -e "${WHITE}│┗━━➤ 3│❌MULTIPLICAÇAO                            "
echo -e "${WHITE}│┗━━➤ 4│➗DIVISÃO                                         "
echo -e "${WHITE}│┗━━➤ 5│√ RAIZ                                               "
echo -e "${WHITE}│┗━━➤ 6│🚪SAIR                                               "
echo -e "${WHITE}└──────────────────────┘"
echo -e 
	       echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r opcao

        case $opcao in
                1|01)
                        clear
                        soma
                        ;;
                2|02)
                        clear
                        subtracao
                        ;;
                3|03)
                        clear
                        multiplicacao
                        ;;
                4|04)
                        clear
                        divisao
                        ;;
                5|05)
                        clear
                        raizquad
                        ;;
                6|06)
                        clear
                        exit 1
                        ;;
                        
               
                *)
                        echo -e "\n${RED}Opção Invalida.${RESET}"
                        menu
        esac
}

function soma ()
{
	
	    clear
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num1
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num2
        clear

	soma=$(($num1 + $num2 ))
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ RESULTADO DA SOMA $soma                 "
	echo -e "${WHITE}└──────────────────────┘"
	
	
	echo -e "-----🤔OQ VAI FAZER? 🤔-----                  "
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ 1│➡️CONTINUAR"
	echo -e "${WHITE}│┗━━➤ 2│📂MENU "
	echo -e "${WHITE}│┗━━➤ 0│🚪SAIR"
	echo -e "${WHITE}└──────────────────────┘"
	
	       echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r op

	if [ "$op" = "1" ]
	then
		soma
	elif [ "$op" = "2" ]
	then
		menu
	elif [ "$op" = "0" ]
	then
		clear		
		exit 
	else
		echo -e "\n${RED}Opção Invalida.${RESET}"
    menu
	fi

}

function subtracao ()
{
	
	    clear
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num1
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num2
        clear

	sub=$(($num1 - $num2 ))
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ RESULTADO DA SUBTRAÇÃO $sub          "
	echo -e "${WHITE}└──────────────────────┘"
	
	
	echo -e "-----🤔OQ VAI FAZER? 🤔-----                  "
 echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ 1│➡️CONTINUAR"
	echo -e "${WHITE}│┗━━➤ 2│📂MENU "
	echo -e "${WHITE}│┗━━➤ 0│🚪SAIR"
	echo -e "${WHITE}└──────────────────────┘"
	
	       echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r op

	if [ "$op" = "1" ]
	then
		subtracao
	elif [ "$op" = "2" ]
	then
		menu
	elif [ "$op" = "0" ]
	then
		clear		
		exit 
	else
		echo -e "\n${RED}Opção Invalida.${RESET}"
    menu
	fi

}

function multiplicacao ()
{

        clear
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num1
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num2
        clear

	mult=$(($num1 * $num2 ))
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ RESULTADO DA MULTIPLICA $mult         "
	echo -e "${WHITE}└──────────────────────┘"
	
	
	echo -e "-----🤔OQ VAI FAZER? 🤔-----                  "
 echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ 1│➡️CONTINUAR"
	echo -e "${WHITE}│┗━━➤ 2│📂MENU "
	echo -e "${WHITE}│┗━━➤ 0│🚪SAIR"
	echo -e "${WHITE}└──────────────────────┘"
	
	       echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r op

	if [ "$op" = "1" ]
	then
		multiplicacao
	elif [ "$op" = "2" ]
	then
		menu
	elif [ "$op" = "0" ]
	then
		clear		
		exit 
	else
		echo -e "\n${RED}Opção Invalida.${RESET}"
    menu
	fi

}

function divisao ()
{

	    clear
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num1
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num2
        clear

	div=$(($num1 / $num2 ))
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ RESULTADO DA DIVISÃO $div                     "
	echo -e "${WHITE}└──────────────────────┘"
	
	
	echo -e "-----🤔OQ VAI FAZER? 🤔-----                  "
 echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ 1│➡️CONTINUAR"
	echo -e "${WHITE}│┗━━➤ 2│📂MENU "
	echo -e "${WHITE}│┗━━➤ 0│🚪SAIR"
	echo -e "${WHITE}└──────────────────────┘"
	
		      echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r op

	if [ "$op" = "1" ]
	then
		divisao
	elif [ "$op" = "2" ]
	then
		menu
	elif [ "$op" = "0" ]
	then
		clear		
		exit 
	else
		echo -e "\n${RED}Opção Invalida.${RESET}"
    menu
	fi

}


function raizquad ()
{
        clear
        echo -e -e "${WHITE}┏━━━━[INFORME UM NUMERO]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r num


i=1


while [ $i -lt $num ]
do




	calc=$(($num / $i))
	calc2=$(($calc * $calc ))



	

		if [ $calc2 -eq $num ]
		then
			break
		fi
	i=$(($i + 1))
done

 clear
	echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ RAIZ QUADRADA É $calc                   "
	echo -e "${WHITE}└──────────────────────┘"
	
	
	echo -e "           -----🤔OQ VAI FAZER? 🤔-----                  "
 echo -e "${WHITE}┌──────────────────────┐"
	echo -e "${WHITE}│┗━━➤ 1│➡️CONTINUAR"
	echo -e "${WHITE}│┗━━➤ 2│📂MENU "
	echo -e "${WHITE}│┗━━➤ 0│🚪SAIR"
	echo -e "${WHITE}└──────────────────────┘"
	
		      echo -e -e "${WHITE}┏━━━━[ESCOLHA]${RESET}"
        echo -e -e "${WHITE}┃${RESET}"
        echo -e -ne "${WHITE}┗━━➤ ${RESET}"${BOLD}
        read -r op

	if [ "$op" = "1" ]
	then
		raizquad
	elif [ "$op" = "2" ]
	then
		menu
	elif [ "$op" = "0" ]
	then
		clear		
		exit 
	else
		echo -e "\n${RED}Opção Invalida.${RESET}"
    menu
	fi

}




menu




