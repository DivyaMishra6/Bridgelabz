cd ../
mkdir main
cd main
mkdir sub1 sub2 sub3
cd sub2
mkdir jpeg/a
mkdir png/b
mkdir jpg/c
cd ../../
cd Desktop/item
for item in `ls | grep a.jpeg ` `ls | grep b.png ` `ls | grep c.jpg`
do
 folder=`echo $item | awk -F. '{ print $1}'`
 folder2= `echo $item | awk -F. '{ print $2}'`
 cd ../
 mkdir -p ~ /main/sub2/$folder/$folder2
 cp -r $item ~ /main/sub2/ $folder/$folder2

done
