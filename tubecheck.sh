wget -O "/root/tubecheck" "https://cdn.jsdelivr.net/gh/sjlleo/TubeCheck/CDN/tubecheck_1.0beta_linux_amd64" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tubecheck"
chmod 777 "/root/tubecheck"
./tubecheck