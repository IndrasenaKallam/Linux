# user add 

echo "enter the username to add"

read a

# switching to root

sudo su -

# creating an user

sudo useradd $a

# adding the user to  wheels group

echo "%$a ALL=(ALL) ALL" >> visudo







