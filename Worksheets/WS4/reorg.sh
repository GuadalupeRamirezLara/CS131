#!/bin/bash

#script to reorganize the 2019 taxi datasets by vendorid for ws4

title="Worksheet4"
vendorid=("1.0" "2.0" "4.0")
time="$(date "+%F-%T")"

file1="${time}-1.0.csv"
file2="${time}-2.0.csv"
file4="${time}-4.0.csv"

touch "$file1"
touch "$file2"
touch "$file4"

for file in 2019-01-h1.csv; do
	if [[ -f "$file" && -s "$file" ]]; then
		# append
        	grep "^1.0," "$file" >> "$file1"
        	grep "^2.0," "$file" >> "$file2"
        	grep "^4.0," "$file" >> "$file4"
    fi
done

# automatically add the three CSV files into ".gitignore"
for file in "$file1" "$file2" "$file4"; do
    echo "$file" >> .gitignore
done

# create a file "ws4.txt" that includes the results from the "wc" command for the three CSV files
touch ws4.txt
wc "$file1" "$file2" "$file4" > ws4.txt

# result of "cat .gitignore" to ws4.txt
echo "results of cat .gitignore: " >> ws4.txt
cat .gitignore >> ws4.txt
