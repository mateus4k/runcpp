#!/bin/bash
version="1.2"

usage(){
cat <<EOF
Usage: runcpp [arguments] <file.cpp>
   or: runcpp [arguments] <file>

Arguments:	
   -h  or  --help	Print Help (this message) and exit
   -v  or  --version	Print version information and exit
EOF
}

# Reading Arguments

case $1 in
    -h | --help | "")
	usage 
	exit
        ;;
    -v | --version)
	echo "runcpp $version"
	exit
        ;;
     *) filename=$1
        ;;
esac

# Checks for file extension

case "$filename" in
    *.cpp)
	filename=${filename%.*}
        ;;
    *)
	;;
esac

# Compiles and run the code

run(){
    g++ $filename.cpp -o $filename & ./$filename
    echo
}

# Get g++ location

app=$(which g++)

# Install and run

if [ $app == "/usr/bin/g++" ] ; then
    run
else
    clear
    echo "Installing g++ compiler..."
    sudo apt-get install -y -qq g++
    clear
    run
fi
