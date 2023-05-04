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
    #echo -e "\033[35m $1 \033[0m"  
	echo -e "\033[35m\033[01m$1\033[0m"
}
ziblue(){
    echo -e "\033[36m $1 \033[0m" 
}
white(){
    echo -e "\033[37m $1 \033[0m" 
}
CountRunTimes() {
    if [ "$is_busybox" == 1 ]; then
        count_file=$(mktemp)
    else
        count_file=$(mktemp --suffix=RRC)
    fi
    RunTimes=$(curl -s --max-time 10 "https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwurendi001%2Fshell&count_bg=%233DC88D&title_bg=%23AE1818&icon=openstack.svg&icon_color=%23E7E7E7&title=%%20E8%BF%90%E8%A1%8C&edge_flat=true" >"${count_file}")
    TodayRunTimes=$(cat "${count_file}" | tail -3 | head -n 1 | awk '{print $5}')
    TotalRunTimes=$(cat "${count_file}" | tail -3 | head -n 1 | awk '{print $7}')
}

#获取互联网时间，这里请求的是苏宁提供的API
result=$(curl -s http://quan.suning.com/getSysTime.do)
datetime=${result:13:19}
#echo $datetime

#服务器检查项目
#Lemonbench 综合测试
function Lemonbench(){
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}
#三网Speedtest测速
function 3speed(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/superspeed.sh)
}
#Route-trace 回城路由追踪
function jcnf(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/jcnf.sh)
}
#获取服务器系统信息
function getsysinfo(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/sysinfo.sh)
}
#流媒体解锁测试
function nf(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/nf.sh)
}
#检测/诊断Youtube地域
function tubecheck(){
wget -O "/root/tubecheck" "https://cdn.jsdelivr.net/gh/sjlleo/TubeCheck/CDN/tubecheck_1.0beta_linux_amd64" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tubecheck"
chmod 777 "/root/tubecheck"
yellow "下载完成,之后可执行 ./tubecheck 再次运行"
./tubecheck
}
#IPV.SH ipv4/6优先级调整
function ipvsh(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ipv4.sh)
}
#303 【 《tiktok”无人值守循环推流直播搭建》 】
function wuren(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/wuren.sh)
}
#302 【 VPS内存日志自动清理 】
function vmshellvps(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/vmshellvps.sh)
}
#301 【 一键修改root密码 】
function root(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/root.sh)
}
#300 【 开放所有端口,统一本地时间\,更新及安装组件,测速,关闭Iptable规则 】
function init(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/init.sh)
}
#210 【 Linux网络优化脚本 】
function tools(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/tools.sh)
}
#211  宝塔面板免验证(中文破解版
function install_6.0(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/install_6.0.sh)
}
#212 【 域名IP证书一建申请 】
function acme(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/acme.sh)
}
#213 【 WARP 一键安装脚本 】
function warpWARP(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/warpWARP.sh)
}
#214 【 检测IP是否解锁tiktok  一键脚本 】
function tiktok(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/tiktok.sh)
}
#=====================科学上网工具=======================



function bahey(){
bash <(curl -s -L https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh)
}


function nfconver(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/nfconver.sh)
}
#00 【 安装BBR 】
function bbr(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/tcp.sh)
}
#99 【 安装BBRS 】
function bbrs(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/tcp2.sh)
}
#101 【 Xray一键安装脚本 】
function vpn001(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/xr2.sh)
}
#301 【 Xray另外一个修改版一键安装脚本 】
function vpn000(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/xr0.sh)
}
#102 【八合一共存脚本 】
function vpn002(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/v2r2.sh)
} 
#103 【Wulabing v2ray 一键脚本 】
function vpn003(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/xr1.sh)   
} 
#105 【 233Boy 修改版 V2Ray 一键安装脚本 】
function vpn005(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/v2r3.sh) 
} 
#106 【 xui 一键安装脚本 】
function x-ui(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/x-ui.sh) 
}
#107 【 ssr 一键安装脚本 】
function ssr(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ssr.sh) 
} 
#117 【 naiveproxy 一键安装脚本 】
function naiveproxy(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/na.sh) 
} 
#108  iptables.sh iptable中转
function iptsh(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/iptables.sh)
}
#109  gost.sh gost一键中转
function gost(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/gost.sh)
}
#110  trojan第一种面板 一键脚本👊
function trojan1(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/trojan1.sh)
}
#111  trojan第二种面板 一键脚本👊
function trojan2(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/trojan2.sh)
}
#112  SSH开启密码、ROOT登录👊
function ssh_open(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ssh_open.sh)
}
#113  SSH端口更换默认22👊
function sshport(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/sshport.sh)
}
#114  Ehco隧道中转👊
function ehco(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ehco.sh)
}
#115  域名ip证书续签 一键脚本👊
function ssl(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ssl.sh)
}
#116  牛逼中转面板👊
function xd(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/xd.sh)
}
#117  极光中转面板👊
function jiguang(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/jiguang.sh)
}
#118  brooks中转👊
function brooks(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/brooks.sh)
}
#119  欺诈分数以及IP质量检测👊
function che(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/che.sh)
}
#120  ssr 另外一种👊
function ssr2(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ssr2.sh)
}
#121  nginx安装 一键代码👊
function nginx(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/nginx.sh)
}
#121  nginx安装第二种 一键代码👊
function nginx2(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/nginx2.sh)
}
#122  在线从装Linux系统
function Inl(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/Inl.sh)
}
#123  socat 中转
function socat(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/socat.sh)
}
#124  tinymapper 中转
function tinymapper(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/tinymapper.sh)
}
#125  看国家IP地区
function openai(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/openai.sh)
}
#126   ovzbbr 
function ovzbbr(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ovzbbr.sh)
}
#127    Echo隧道便携脚本
function ehco2(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/ehco2.sh)
}
#128    sk5脚本
function sk5(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/sk5.sh)
}
#129    v2ray
function v2ray(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/v2ray.sh)
}
#130    trojan
function trojan(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/trojan.sh)
}
#131    trojan
function trojan-go(){
bash <(curl -s -L http://hsxqsky.hkfree.workp/ShellAll/trojan-go.sh)
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
    green " 17.【BBR加速V1一键脚本】               ||    18.【 BBRS加速V2一键脚本 ※ 推荐】"
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
    ziblue " 55.【在线Linux系统一键从装】           ||    56.【开放所有端口+同步时间+更新系统组件+测速+关闭Iptable规则】"
    zired " ============================================================================================================ "   
    zired "                    ******  0.退出脚本  北京时间: $datetime ****** " #$(date) 
    zired " ============================================================================================================ "
    echo
	stty erase '^H'
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
 #==================================    
		1 )
            #vpn002
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
