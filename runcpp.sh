#!/bin/bash
version="1.3"

usage(){
cat <<EOF
Usage: runcpp [arguments] <file.cpp>
   or: runcpp [arguments] <file>
Arguments:	
   -h  or  --help	Print Help (this message) and exit
   -v  or  --version	Print version information and exit
   -u  or  --update		Update runcpp and exit
EOF
}

update(){
	cd ~/runcpp && git pull && sudo chmod u+x runcpp.sh && sudo cp runcpp.sh runcpp && sudo mv runcpp /usr/local/bin
}

# Read Arguments

case $1 in
    -h | --help | "")
		usage 
		exit
		;;

    -v | --version)
		echo "runcpp $version"
		exit
    	;;

    -u | --update)
		update && echo "Update successful! \nruncpp $version"
		exit
    	;;

     *) filename=$1
	    ;;
esac

# Check for file extension

case "$filename" in
    *.cpp)
		filename=${filename%.*}
        ;;
esac

# Check if g++ exists

command -v g++ >/dev/null 2>&1 || {
    echo >&2 "g++ is not installed. Please run sudo apt-get install g++";
    exit 1;
}

# Check if gcc exists

command -v gcc >/dev/null 2>&1 || {
    echo >&2 "gcc is not installed. Please run sudo apt-get install gcc";
    exit 1;
}

# Compile and run

g++ -Wall -W -s -pedantic-errors "$filename".cpp -o "$filename" && ./"$filename"
