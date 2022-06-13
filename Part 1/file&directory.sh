pwd

ls

# Begin with ' / ' is absolute path. Otherwise, relative path.
ls course.txt
ls seasonal/summer.csv
ls people

cd

cd /home/repl/seasonal
cp seasonal/summer.csv backup/summer.backup
cp seasonal/spring.csv seasonal/summer.csv backup

mv seasonal/spring.csv seasonal/summer.csv backup

cd seasonal
# 'mv' can also rename files.
mv winter.csv winter.csv.bck
ls

cd seasonal
rm autumn.csv
cd /home/repl
rm seasonal/summer.csv

rmdir 

# 'rmdir' - remove directories, separate from 'rm'.
rm people/agarwal.txt
rmdir people
mkdir yearly
mkdir yearly/2017

cd /tmp
ls
mkdir /tmp/scratch
mv ~/people/agarwal.txt scratch

