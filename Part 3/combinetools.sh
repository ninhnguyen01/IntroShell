# store output in a file.
# '>'
tail -n 5 seasonal/winter.csv > last.csv 
cat last.csv 

tail -n 2 seasonal/winter.csv > bottom.csv
head -n 1 bottom.csv

# 'pipe- combine files (output from left as input on the right).
# ' | '
cut -d, -f 2 seasonal/summer.csv | grep -v Tooth
cut -d, -f 2 seasonal/summer.csv | grep -v Tooth | head -n 1

# 'wc' - word count
# -c
# -w
# -l
grep 2017-07 seasonal/spring.csv | wc -l

# ' * ' - wildcards (match zero or more characters).
head -n 3 seasonal/s*

# other wildcards
# ' ? '
# ' [...] '
# ' {...} '

# 'sort' - puts data in order.
# '-n' - numerically
# '-r' - reverse the order
# '-b' - ignore leading blanks
# '-f' - fold case (be case-insensitive)
cut -d , -f 2 seasonal/winter.csv | grep -v Tooth | sort -r 

#'uniq' - remove duplicated lines.
cut -d, -f 2 seasonal/winter.csv | grep -v Tooth | sort | uniq -c 

# stop a running program
# 'ctrl + C'

# building a pipeline
wc -l seasonal/*.csv
wc -l seasonal/*.csv | grep -v total
wc -l seasonal/*.csv | grep -v total | sort -n | head -n 1

