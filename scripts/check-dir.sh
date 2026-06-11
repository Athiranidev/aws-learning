echo " Enter the directory name "
read dir
if [ -d  $dir ]
then 
	echo " $dir exists "
else
	echo "$dir not exists"
fi
