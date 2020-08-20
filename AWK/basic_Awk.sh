#syntax

# awk options 'selection_criteria{action}' input-file > output-file

# printing all the lines from text file
awk '{print}' text.txt > fulltext.txt


# Inorder to extract a  particular match

awk '/manager/ {print}' text.txt > managers


# Splitting a line into fields

# If the line has 4 words, it will be stored in $1, $2, $3 and $4 respectively.
# Also, $0 represents the whole line.

awk '{print $4,$1}' text.txt > name_salary.txt


# Built in variables in Awk

: '
NR : keeps the count of that line in the txt file,
NF : keeps the count of the fields within the current input record.
FS : contains the field separator character which is used to divide fields on the input line
RS : stores the current record separator character.
OFS: stores output field separator.
ORS: Stores the output record separator.

'
# using NF to display the last field instead of counting the number of variables
echo "printing the first and last column in the text field"
awk '{print $1,$NF}' text.txt > first_last_column.txt


# use of NF for last butone column
echo "printing the last but one column"

awk '{print$1,$(NF-1)}' text.txt >first_last1_column.txt



# using NR (number of the record)
# this command represents the records with  from 3 to 6 
awk 'NR==3,NR==6 {print NR,$0}' text.txt > record_with_numbers.txt


# printing the lines with a separating 

awk 'NR==3,NR==6 {print NR,"==",$0}' text.txt > record_with_numbers_=.txt

# applying condition on a particular column

awk ' $NF>5000 {print $1}' text.txt >salaries_greater_5000.txt

# If condition in the awk


 awk '{ if (length($0) > max) max = length($0) } END { print max }' text.txt

# printing the lines greater than 10 characters 


awk 'length($0) > 10' text.txt


# count the number of lines in a file 

echo "Number of lines in the text file:"

awk 'END {print NR}' text.txt

# checking for a particular string 
echo " records from sales department "
awk '{if($3=="sales") print records with sales are $0}' text.txt


#  printing the squares of numbers from 1 to 6 
awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }'










