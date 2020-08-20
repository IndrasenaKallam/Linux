function rect() {
	area=$(($1*$2))
	echo "area of a rectangle :$area"
}

echo "enter the length and breadth of a rectangle as an arguments from the commandline terminal like $0 length breadth"
rect $1 $2

