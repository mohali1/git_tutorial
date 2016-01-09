# Display the name of each data file and count
# the number of distinct occurrences of each species
# in that file
date
for filename in data/*.txt
do
    echo $filename
    grep -v Species $filename | cut -d, -f2 | sort | uniq -c | sort -n -r 
done