#! /bin/bash



if [ $# -ne 3 ]
  then
    echo "you have incorrect number of arguments"
  else
   directory1=$1
   directory2=$2
   destination=$3

if [ $directory1 = $directory2 ] 
	  then
	  echo "ERROR: first directory name is equal to second directory name"
elif [ $directory1 = $destination ]
	  then
          echo "ERROR: first directory name is equal to destination directory name"
elif [ $directory2 = $destination ]
	  then
          echo "ERROR: Second directory name is equal to destination directory name"
elif [ ! -d $directory1 ]
	  then
          echo "ERROR: Directory $1 does not exist"
elif [ ! -d $directory2 ]
	  then
	  echo "ERROR: Directory $2 does not exist"
elif [ $# -eq 3 ]
	  then
    	  read $destination
elif [ -d $destination]
	  then 
          echo "error creating destination directory: directory name already exists!"
elif [ ! -d $destination ]
          then
          mkdir $destination
          echo "Directory creation sucessful"
else
          echo "error creating directory"
fi
fi
sleep 1

read $directory1
          echo "you type $1"
sleep 1

if [ -d $directory1 ]
          then
          chmod +x $directory1
          cp -arvu $directory1/* $destination
          echo "Directory copying sucessful"
else
          echo "Error moving copying directory"
fi

read $directory2
	  echo "you type $2"

if [ -d $directory2 ]
	  then
	  chmod +x $directory2
          cp -arvu $directory2/* $destinaton
          echo "Directory copying sucessful"
else
          echo "Error moving copying directory"
fi

cd $destination
ls -av
