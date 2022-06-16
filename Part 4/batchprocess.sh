# environment variable
set | grep HISTFILESIZE

# variable value
# use ' $ ' so that shell can interpret that you mean the value of a variable name.
echo $OSTYPE
# Result - 'linux-gnu'

# shell variable
testing=seasonal/winter.csv
head -n 1 $testing

# loops
# example (below)
for filetype in gif jpg png; do echo $filetype; done
# it produces:
gif
jpg
png

# example assignment (below)
for filetype in docx odt pdf; do echo $filetype; done 

# repeat command
for filename in people/*; do echo $filename; done 

# record the name of set files (shortcut examples)
datasets=seasonal/*.csv
for filename in $datasets; do echo $filename; done

files=seasonal/*.csv
for f in $files; do echo $f; done

# single loop command
for file in seasonal/*.csv; do head -n 2 $file | tail -n 1; done

# grep 2017-07 seasonal/winter.csv | tail -n 1 (same as below)

for file in seasonal/*.csv; do grep 2017-07 $file | tail -n 1; done

