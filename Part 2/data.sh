# 'cat' - print content of files.
cat course.txt

# 'less' - page an output (one page is displayed at a time).
# q - quit
# :n - move to next file
# :p - go back to previous page
# :q - quit file
less/seasonal/spring.csv seasonal/summer.csv

# 'head' - print first few (10) lines of a file.
head people/agarwal.txt

# 'tab' - auto-complete path.
head seasonal/autumn.csv 
head seasonal/spring.csv

# command line flag
# '-n' - signal number of lines.
head -n 5 seasonal/winter.csv

# '-R' - recursive
# 'ls -R' - show every file and directory in current level and so on.
ls -R -F /home/repl

# 'man' - manual
# man head
man tail -n +
tail -n +7 seasonal/spring.csv

# 'cut' - select columns
# '-f' - fields
# '-d' - delimiter
cut -d , -f 1 seasonal/spring.csv
cut -d , -f1 seasonal/spring.csv

# repeat command
head summer.csv
cd seasonal/
!head
head summer.csv
history
!head 3

# 'grep' - select lines according to what they contain.
# common grep (below)
# '-c' - print count of matching lines.
# '-h' - do not print name of files. 
# '-i' - ignore cases.
# '-l' - print the name of files that contain matches.
# '-n' - print line numbers for matching lines.
# '-v' - invert the match.
grep molar seasonal/autumn.csv
grep -n -v molar seasonal/spring.csv
grep -c incisor seasonal/autumn.csv seasonal/winter.csv
