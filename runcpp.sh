#!/bin/bash
version="1.0"
###install ./runcpp ~/bin/runcpp

usage(){
cat <<EOF
Usage: runcpp [arguments] <file.cpp>
   or: runcpp [arguments] <file>

Arguments:	
   -h  or  --help	Print Help (this message) and exit
   -v  or  --version	Print version information and exit
EOF
}

#argumentos
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

#checa se o arg 1 é um arquivo com extensao .cpp
case "$filename" in
    *.cpp)
	filename=${filename%.*}
        ;;
    *)
	;;
esac

# compila e executa o código c++
run(){
    g++ $filename.cpp -o $filename; ./$filename
}

# tenta localizar o g++
app=$(which g++)

# compila o código ou instala o compilador e executa
if [ $app == "/usr/bin/g++" ] ; then
    run
else
    clear
    echo "Installing g++ compiler..."
    sudo apt-get install -y -qq g++
    clear
    run
fi
