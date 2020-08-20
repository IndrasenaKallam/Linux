# multiple_case

echo "enter the day of the week"

read day

case $day in 

mon|tue)

echo "lucky day" ;;

wed|thu)

echo "worst day" ;;

fri|sat|sun)

echo "bad day" ;;

*)
echo "None"

;;

esac
