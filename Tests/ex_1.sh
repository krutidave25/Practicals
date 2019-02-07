#EXAMPLE 1 Write a shell script that adds an extension “.new” to all the files in the directory.
for i in *
do
mv $i ${i}.new
if [ $? -eq 0 ]
then 
echo "file rename successful"
ls -l ${i}*
fi
done
