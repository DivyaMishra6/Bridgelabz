for item in `ls | grep pdf` 
do
 folderNames=`echo $item | awk -F.'{print $1}'`
 mkdir $folderNames
  cp -r $item $folderNames
done
