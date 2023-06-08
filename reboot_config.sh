purple(){
    echo -e "\033[30m $1 \033[0m" 
}
red(){
    echo -e "\033[31m $1 \033[0m"  
}
green(){
    echo -e "\033[32m $1 \033[0m"  
}
yellow(){
    echo -e "\033[33m $1 \033[0m" 
}
blue(){
    echo -e "\033[34m $1 \033[0m" 
}
#========================================================

#Debian系统SSH防护
function Crontab_add(){
	clear
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	yellow "================================= 配置，服务器重启配置 =============================== "
    green "时间格式为【时-分】"   
    echo
    stty erase '^H'
    read -p "请输入服务器重启时间:" menuNumberInput
	
	if [ "$menuNumberInput" = "" ]; then
		menu
	else
		valA=$(echo $menuNumberInput | awk -F'-' '{print NF-1}')
		valB=$(echo $menuNumberInput | awk -F'.' '{print NF-1}')
		if (($valA==1)) && (($valB==0));then
			nums=(${menuNumberInput//-/ })
			if [ ! -f "/var/spool/cron/crontabs/root" ]; then
				touch /var/spool/cron/crontabs/root 
			fi				
			
			#echo SINGLE,${nums[0]},${nums[1]},${nums[2]} >> /etc/nat.conf
			echo ${nums[1]} ${nums[0]} "* * * /sbin/reboot 2>&1" >> /var/spool/cron/crontabs/root
			
			yellow "                             ******  服务器定时重启添加成功  ****** " 
			
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			start_menu "first"
		else
			Crontab_add
		fi
	fi	
	
	start_menu "first"
}
function Crontab_setup(){
    clear
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"

	apt install cron -y
	
    yellow "                             ******  安装 Crontab 成功  ****** " 
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	
	start_menu "first"
}
function Crontab_start(){
    clear
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"

	/etc/init.d/cron start
	
    yellow "                             ******  启动 Crontab 成功  ****** " 
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	
	start_menu "first"
}
function Crontab_view(){
    clear	
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"

    crontab -l  
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	
	start_menu "first"
}
function Crontab_reboot(){
    clear
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"

	/etc/init.d/cron restart
	
    yellow "                             ******  Crontab服务已重启  ****** " 
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	
	start_menu "first"
}
function Crontab_edit(){
    clear
	crontab -e
}

#获取互联网时间，这里请求的是苏宁提供的API
result=$(curl -s http://quan.suning.com/getSysTime.do)
datetime=${result:13:19}

#========================================================
#主菜单
function start_menu(){
    #apt update -y && apt install -y curl && apt install -y socat && apt install wget -y
    #clear
	echo
    yellow "================================= 配置，服务器重启配置 ================================ "
    green " 1.【安装 Crontab】		||	2.【启动 Crontab】"   
    green " 3.【添加重启时间】		||	4.【查看 Crontab】"
    green " 5.【编辑 Crontab】		||	6.【重启 Crontab】"

    yellow "====================================================================================== "   
    yellow "     ****** 0. 退出脚本 北京时间: $datetime ******" #$(date) 
    yellow "====================================================================================== "
    echo
    stty erase '^H'
    read -p "请输入数字:" menuNumberInput


	if [[ $menuNumberInput != 0 ]]; then
		red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	else
		clear
	fi 
	
    case "$menuNumberInput" in
 #==================================    
		1 )
            Crontab_setup
	;;
		2 )
            Crontab_start
	;;
		3 )
            Crontab_add
	;;
	    4 )
            Crontab_view
	;;
	    5 )
            Crontab_edit
	;;	
		6 )
            Crontab_reboot
	;;

 #==================================
        0 )
            exit 1
        ;;
        * )
            clear
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
            yellow "请输入正确数字 !"
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
            start_menu
        ;;
    esac
}
start_menu "first"
