cd ../
mkdir main
cd main
mkdir sub1 sub2 sub3
cd sub2
cd ~/Desktop/item
for item in `ls`
do
folder=`echo $item | awk -F. '{print $1}'`
folder2=`echo $item | awk -F. '{print $2}'`
mkdir -p ~/Desktop/main/sub2/$folder/$folder2
cp -r $item ~/Desktop/main/sub2/$folder/$folder2
done
