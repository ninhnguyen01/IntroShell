# text editor "Nano"
nano names.text

Lovelace
Hopper
Johnson
Wilson

# ctrl + o
# enter
# ctrl + x

# record
cp seasonal/s* ~
grep -h -v Tooth seasonal/s* > temp.csv
history | tail -n 3 | steps.txt 

# save command

# headers.sh
# bash headers/sh
# bash -> name for the shell program.
nano dates.sh
cut -d , -f 1 seasonal/*.csv 
bash dates.sh 

# re-use pipes

# shell script - a file full of shell commands.
# (example below)
# Scripts can also contain pipes. For example, if all-dates.sh contains this line:
cut -d , -f 1 seasonal/*.csv | grep -v Date | sort | uniq
# then:
bash all-dates.sh > dates.out

# end

nano teeth.sh
cut -d , -f 2 seasonal/*.csv | grep -v Tooth | sort | uniq -c
bash teeth.sh > teeth.out
cat teeth.out

# pass filenames to scripts

# $@ - "all of the command-line parameters given to the script".
# (example below)
# For example, if unique-lines.sh contains sort $@ | uniq, when you run:
bash unique-lines.sh seasonal/summer.csv
# the shell replaces $@ with seasonal/summer.csv and processes one file. If you run this:
bash unique-lines.sh seasonal/summer.csv seasonal/autumn.csv
# it processes two data files, and so on.
# As a reminder, to save what you have written in Nano, type Ctrl + O to write the file out, then Enter to confirm the filename, then Ctrl + X to exit the editor.

# end

nano count-records.sh
tail -q -n +2 $@ | wc -l 
bash count-records.sh seasonal/*.csv > num-records.out

# one shell script
nano range.sh
wc -l $@ | grep -v total 
nano range.sh
wc -l $@ | grep -v total | sort -n | head -n 1
wc -l $@ | grep -v total | sort -n -r | head -n 1
bash range.sh seasonal/*.csv > range.out

# loops in a shell script

# (example below)
# Print the first and last data records of each file.
for filename in $@
do
    head -n 2 $filename | tail -n 1
    tail -n 1 $filename
done

# end

nano date-range.sh
for filename in $@
do 
    cut -d , -f 1 $filename | grep -v Date | sort | head -n 1
    cut -d , -f 1 $filename | grep -v Date | sort | tail -n 1
done

bash date-range.sh seasonal/*.csv
bash date-range.sh seasonal/*.csv | sort

