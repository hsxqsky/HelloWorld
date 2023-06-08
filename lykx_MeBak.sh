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
zired(){
    echo -e "\033[35m $1 \033[0m"  
	#echo -e "\033[35m\033[01m$1\033[0m"
}
ziblue(){
    echo -e "\033[36m $1 \033[0m" 
}
white(){
    echo -e "\033[37m $1 \033[0m" 
}

#获取互联网时间，这里请求的是苏宁提供的API
result=$(curl -s http://quan.suning.com/getSysTime.do)
datetime=${result:13:19}
#echo $datetime

#获取服务器系统信息
function getsysinfo(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/sysinfo.sh)
}
#流媒体解锁测试
function nf(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/CheckTV.sh)
}

#214 【 检测IP是否解锁tiktok  一键脚本 】
function tiktok(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/tiktok.sh)
}


#Debian系统SSH防护
function ssh_close(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/ssh_config.sh)
}
  
		  
#=====================科学上网工具=======================


#八合一共存一键脚本
function bahey(){
bash <(curl -s -L https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh)
}

#Nftables中转
function nfconver(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/nfconver.sh)
}

#安装BBR
function bbr(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/tcp.sh)
}
 
#iptable中转
function iptsh(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/iptables.sh)
}

#看国家IP地区
function openai(){
bash <(curl -s -L http://hsxqsky.hkfree.work/ShellAll/openai.sh)
}

#========================================================
#主菜单
function start_menu(){
    #yum update -y && yum install -y curl && yum install -y socat && yum install wget -y
    #apt update -y && apt install -y curl && apt install -y socat && apt install wget -y
    clear
	zired "==================================================================================="  
    green "================================= 搭建，科学上网工具 =============================="
    green "      1.【八合一共存一键脚本】              ||    2.【BBR加速一键脚本】"   
    green "      3.【Nftables中转.Debian系】           ||    4.【Iptables中转.CentOS系】 "
    green "      5.【获取服务器系统信息】              ||    6.【查看IP归属那个国家】"
    green "      7.【流媒体解锁测试】                  ||    8.【检测IP是否解锁tiktok】"                
    green "      9.【Debian系统SSH防护】" 
    
	zired "==================================================================================="   
    zired "           ******  0.退出脚本  北京时间: $datetime ****** " #$(date) 
    zired "==================================================================================="   
    echo
	stty erase '^H'
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
 #==================================    
		1 )
			bahey	
	;;
		2 )
            bbr
	;;
		3 )
            nfconver
	;;
		4 )
            iptsh
	;;
		5 )
            getsysinfo
	;;
		6 )
            openai
	;;
		7 )
             nf
	;;
		8 )
            tiktok
	;;
		9 )
            ssh_close
	;;
	 #==================================
        0 )
            exit 1
        ;;
        * )
            clear
            red "请输入正确数字 !"
            start_menu
        ;;
    esac
}

start_menu "first"
