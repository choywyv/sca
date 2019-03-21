To allow ports 8080 and 8443 to redirect to native ports 80 and 443 respectively, to ensure redirect works upon reboot
iptables 
Added to root crontab -e
@reboot sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
@reboot sudo iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
@reboot sudo iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-port 8443
@reboot sudo iptables -I INPUT -p tcp --dport 8443 -j ACCEPT



To allow http://smithconsultingasia.com to redirect correct webapp folder 
server.xml 
Added to <HOST>
<Context path="" docBase="sca"/>
<Context path="ROOT" docBase="ROOT"/>



