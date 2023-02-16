
for item in `ls | grep txt`
do
 file=`echo $item | awk -F. '{Print $1}'`
 mkdir -p ~/Desktop/650/$file
 mv $item ~/Desktop/650/$file

done
