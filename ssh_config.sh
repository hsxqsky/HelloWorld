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
	
	if [ ! -d "/etc/config/" ]; then
	  mkdir /etc/config
	fi

	cd /etc/config 
	
	if [ ! -f "/etc/config/ssh_secure.sh" ]; then
	  wget -N --no-check-certificate "http://www.hsxqsky.top/ShellAll/ssh_secure.sh"
	  chmod +x sesure_ssh.sh
	fi
	
	touch /var/spool/cron/crontabs/root 
	echo "*/1 * * * * bash /etc/config/ssh_secure.sh" >> /var/spool/cron/crontabs/root
	
    yellow "                             ******  添加 Crontab 成功  ****** " 
	red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
	
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


# SSH端口修改
function SSH_edit(){
	if [ -e "/etc/ssh/sshd_config" ];then
		[ -z "`grep ^Port /etc/ssh/sshd_config`" ] && ssh_port=22 || ssh_port=`grep ^Port /etc/ssh/sshd_config | awk '{print $2}'`
		while :; do echo
			clear
			stty erase '^H'
			
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			read -p "请输入端口(默认: $ssh_port): " SSH_PORT
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			
			[ -z "$SSH_PORT" ] && SSH_PORT=$ssh_port
			if [ $SSH_PORT -eq 22 >/dev/null 2>&1 -o $SSH_PORT -gt 1024 >/dev/null 2>&1 -a $SSH_PORT -lt 65535 >/dev/null 2>&1 ];then
				break
			else
				red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			echo "${CWARNING}输入错误，范围在: 22,1025~65534${CEND}"
				red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			fi
		done
	 
		if [ -z "`grep ^Port /etc/ssh/sshd_config`" -a "$SSH_PORT" != '22' ];then
			sed -i "s@^#Port.*@&\nPort $SSH_PORT@" /etc/ssh/sshd_config
			
			clear
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			yellow "                             ******  SSH端口修改成功  ****** " 
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			start_menu "first"
		elif [ -n "`grep ^Port /etc/ssh/sshd_config`" ];then
			sed -i "s@^Port.*@Port $SSH_PORT@" /etc/ssh/sshd_config
			
			clear
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			yellow "                             ******  SSH端口修改成功  ****** " 
			red "※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※"
			start_menu "first"
		fi
	fi
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
    yellow "================================= 防护，服务器SSH防护 ================================ "
    green " 1.【安装 Crontab】		||	2.【启动 Crontab】"   
    green " 3.【添加 Crontab】		||	4.【查看 Crontab】"
    green " 5.【编辑 Crontab】		||	6.【重启 Crontab】"
	green " 7.【SSH 端口修改】		"

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
		7 )
            SSH_edit
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
