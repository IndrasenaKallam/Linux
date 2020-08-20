# for loop

for command in pwd date df 
do
	echo 
	echo "*********** the output of the command $command"
	$command
	echo "done"
	
done

