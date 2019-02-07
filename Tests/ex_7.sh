#EXAMPLE-7Write a shell script that copy all the directories, subdirectories and files from one location to another specific location.
echo "Enter  source file to copy"
read s_file
echo "Enter Destination file"
read d_file
echo "Copying files"
cp -R $s_file $d_file
echo "Files Copied"
cd $_file
