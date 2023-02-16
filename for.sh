for item in `ls | grep pdf`
do
folderName =`echo $item | awk '{ print $1}'`
mkdir $folderName
cp -r $item $folderNames
 done
