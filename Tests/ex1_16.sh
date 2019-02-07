for i in *
do
mv $i ${i}.new
if [ $? -eq 0 ]
then 
echo "file rename successful"
ls -l ${i}*
fi
done
