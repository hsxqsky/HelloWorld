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
    echo -e "\033[35m\033[01m$1\033[0m"
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

# Lemonbench 综合测试
function Lemonbench(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/lemonbench.sh)
}
# 三网Speedtest测速
function 3speed(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/superspeed.sh)
}
# 回城路由追踪
function jcnf(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/jcnf.sh)
}
# 获取服务器系统信息
function getsysinfo(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/sysinfo.sh)
}
# 流媒体解锁测试
function nf(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/nf.sh)
}
# 检测/诊断Youtube地域
function tubecheck(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tubecheck.sh)
}
# IPV.SH ipv4/6优先级调整
function ipvsh(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ipv4.sh)
}
# tiktok无人值守循环推流直播搭建 
function wuren(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/wuren.sh)
}
# VPS内存日志自动清理 
function vmshellvps(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/vmshellvps.sh)
}
# 一键修改root密码 
function root(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/root.sh)
}
# 开放端口,同步时间,更新系统,测速,关闭Iptable规则 
function init(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/init.sh)
}
# Linux网络优化脚本 
function tools(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tools.sh)
}
# 宝塔面板免验证(中文破解版
function install_6.0(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/install_6.0.sh)
}
# 域名IP证书一建申请
function acme(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/acme.sh)
}
# WARP 一键安装脚本 
function warpWARP(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/warpWARP.sh)
}
# 检测IP是否解锁tiktok
function tiktok(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tiktok.sh)
}

# 服务器定时重启配置
function reboot_config(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/reboot_config.sh)
}

# Debian系统SSH防护
function ssh_close(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ssh_config.sh)
}

#=====================科学上网工具=======================

#八合一共存一键脚本
function bahey(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh)
}

# Nftables一键中转.支持deban系
function nfconver(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/nfconver.sh)
}
# 安装BBR 
function bbr(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tcp.sh)
}
# 安装BBRS 
function bbrs(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tcp2.sh)
}
# Xray一键安装脚本
function vpn001(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/xr2.sh)
}
# Xray另外一个修改版一键安装脚本 
function vpn000(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/xr0.sh)
}
# 八合一共存脚本 
function vpn002(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/v2r2.sh)
} 
# Wulabing v2ray 一键脚本  
function vpn003(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/xr1.sh)   
} 
# 233Boy 修改版 V2Ray 一键安装脚本  
function vpn005(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/v2r3.sh) 
} 
# xui 一键安装脚本 
function x-ui(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/x-ui.sh) 
}
# ssr 一键安装脚本 
function ssr(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ssr.sh) 
} 
# naiveproxy 一键安装脚本
function naiveproxy(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/na.sh) 
} 
# iptable中转
function iptsh(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/iptables.sh)
}
# gost一键中转
function gost(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/gost.sh)
}
# trojan第一种面板 一键脚本
function trojan1(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/trojan1.sh)
}
# trojan第二种面板 一键脚本
function trojan2(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/trojan2.sh)
}
# SSH开启密码、ROOT登录
function ssh_open(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ssh_open.sh)
}
# SSH端口更换默认22
function sshport(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/sshport.sh)
}
# Ehco隧道中转
function ehco(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ehco.sh)
}
# 域名ip证书续签 一键脚本
function ssl(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ssl.sh)
}
# 牛逼中转面板
function xd(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/xd.sh)
}
# 极光中转面板
function jiguang(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/jiguang.sh)
}
# brooks中转
function brooks(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/brooks.sh)
}
# 欺诈分数以及IP质量检测
function che(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/che.sh)
}
# ssr 另外一种
function ssr2(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ssr2.sh)
}
# nginx安装 一键代码
function nginx(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/nginx.sh)
}
# nginx安装第二种 一键代码
function nginx2(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/nginx2.sh)
}
# 在线从装Linux系统
function Inl(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/Inl.sh)
}
# socat 中转
function socat(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/socat.sh)
}
# tinymapper 中转
function tinymapper(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/tinymapper.sh)
}
# 看国家IP地区
function openai(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/openai.sh)
}
# ovzbbr 
function ovzbbr(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ovzbbr.sh)
}
# Echo隧道便携脚本
function ehco2(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/ehco2.sh)
}
# sk5脚本
function sk5(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/sk5.sh)
}
# v2ray
function v2ray(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/v2ray.sh)
}
# trojan
function trojan(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/trojan.sh)
}
#  trojan
function trojan-go(){
clear
bash <(curl -s -L https://raw.githubusercontent.com/hsxqsky/HelloWorld/main/trojan-go.sh)
}
#========================================================
#主菜单
function start_menu(){
    #yum update -y && yum install -y curl && yum install -y socat && yum install wget -y
    #apt update -y && apt install -y curl && apt install -y socat && apt install wget -y
    clear
    green " ================================= 搭建，科学上网工具 =============================== "
    green "  1.【八合一共存一键脚本】              ||     2.【Xray 另外一个一键安装脚本 】"   
    green "  3.【V2ray一键安装脚本】               ||     4.【Trojan一键安装脚本 】"
    green "  5.【Trojan-go一键安装脚本】           ||     6.【Xray一键安装脚本 】"
    green "  7.【Bing v2ray一键脚本】              ||     8.【233boy V2Ray一键安装脚本 】" 
    green "  9.【X-ui一键脚本】                    ||    10.【SSR V1一键脚本 】"
    green " 11.【SSR V2一键脚本】                  ||    12.【Sock5协议一键脚本 】"
    green " 13.【Naiveproxy一键脚本】              ||    14.【Trojan面板V1一键脚本】"
    green " 15.【Trojan面板V2一键脚本】            ||    16.【宝塔面板中文破解免验证 ※ 推荐】"     
    green " 17.【BBR加速V1一键脚本】               ||    18.【BBR加速V2一键脚本 ※ 推荐】"
    yellow " ==================================中转，服务器流量中转 =============================== "
    yellow " 21.【Iptables中转】                    ||    22.【Nftables一键中转.支持deban系】"
    yellow " 23.【Tinymapper中转】                  ||    24.【Gost一键中转】"     
    yellow " 25.【Echo隧道中转便携脚本】            ||    26.【Ehco隧道一键中转】"
    yellow " 27.【Brooks一键中转】                  ||    28.【Socat中转.支持deban系】"
    yellow " 29.【咸蛋中转机面板一键脚本】          ||    30.【极光中转机面板一键脚本】 "        
    white " ================================= 检查，服务器功能检查 =============================== "
    white " 31.【获取服务器系统信息】              ||    32.【检测IP是否解锁 OpenAI】"
    white " 33.【Lemonbench 综合测试】             ||    34.【三网Speedtest测速】"
    white " 35.【回程路由追踪】                    ||    36.【检测IP是否解锁tiktok】"
    white " 37.【流媒体解锁测试】                  ||    38.【检测/诊断Youtube地域】"
    ziblue " ================================== 配置，服务器功能配置 =============================== "
    ziblue " 41.【Ipv4/6优先级调整】                ||    42.【VPS内存日志自动清理】"
    ziblue " 43.【Linux_tcp网络优化一键脚本】       ||    44.【BBR加速端口一键安装脚本】"
    ziblue " 45.【一键修改root密码】                ||    46.【Tiktok无人值守循环推流直播搭建】 "
    ziblue " 47.【域名ip证书一键申请脚本】          ||    48.【WARP 一键安装脚本】"
    ziblue " 49.【开启SSH登陆+替换ROOT密钥登陆】    ||    50.【修改SSH 端口默认22，或厂家给的默认的端口 】"
    ziblue " 51.【域名ip证书续签一键脚本】          ||    52.【欺诈分数以及IP质量检测 一件代码】"
    ziblue " 53.【Nginx安装一键代码】               ||    54.【Nginx安装第二种 一键代码】"
    ziblue " 55.【在线Linux系统一键从装】           ||    56.【开放端口+同步时间+更新系统+测速+关闭Iptable规则】"
    ziblue " 57.【Debian系统SSH防护】		 ||    58.【服务器定时重启配置】" 
    zired " ============================================================================================================ "   
    zired "                    ******  0.退出脚本  北京时间: $datetime ****** " #$(date) 
    zired " ============================================================================================================ "
    echo
	stty erase '^H'
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
 #==================================    
		1 )
			bahey		
	;;
		2 )
            vpn000
	;;
		3 )
            v2ray
	;;
		4 )
            trojan
	;;
		5 )
            trojan-go
	;;
		6 )
            vpn001
	;;
		7 )
            vpn003
	;;
		8 )
            vpn005
	;;
		9 )
            x-ui
	;;
		10 )
            ssr
	;;
		11 )
            ssr2
	;;
		12 )
            sk5
	;;
		13 )
            naiveproxy
	;;
		14 )
            trojan1
	;;
		15 )
            trojan2
	;;		
		16 )
           install_6.0
	;;
		17 )
           bbr
	;;
		18 )
           bbrs
	;;
 #==================================
		21 )
             iptsh
	;;
		22 )
             nfconver
	;;
		23 )
             tinymapper
	;;								
		24 )
             gost
	;;
		25 )
             ehco2
	;;
		26 )
             ehco
	;;
		27 )
             brooks
	;;
		28 )
             socat
	;;
		29 )
             xd
	;;
		30 )
             jiguang
	;;
 #==================================
		31 )
             getsysinfo
	;;
		32 )
              openai
	;;
		33 )
             Lemonbench
	;;
		34 )
             3speed
	;;
		35 )
             jcnf
	;;
		35 )
             tiktok
	;;

		37 )
             nf
	;;
		38 )
             tubecheck
	;;
 #==================================
		41 )
             ipvsh
	;;
		42 )
             vmshellvps
	;;
		43 )
             tools
	;;
		44 )
              ovzbbr
	;;

		45 )
             root
	;;
		46 )
             wuren
	;;
		47 )
             acme
	;;
	    48 )
             warpWARP
	;;
		49 )
             ssh_open
	;;
		50 )
             sshport
	;;
		51 )
             ssl
	;;
		52 )
             che
	;;
		53 )
             nginx
	;;
		54 )
             nginx2
	;;
		55 )
               Inl
	;;
		56 )
             init
	;;
		57 )
             ssh_close
	;;
		58 )
             reboot_config
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
