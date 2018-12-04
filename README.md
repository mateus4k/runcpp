<img align="left" width="64px"
src="https://banner2.kisspng.com/20180408/pew/kisspng-the-c-programming-language-computer-icons-comput-programming-5acadc2dec0be9.0824244915232440779669.jpg" />

# runCpp

![version][s0] ![Lines of Code][s1] ![HitCount][s2] ![issues][s3] ![stars][s4]

[s0]: https://img.shields.io/github/release/mateus4k/runcpp.svg
[s1]: https://tokei.rs/b1/github/mateus4k/runcpp?category=code
[s2]: http://hits.dwyl.io/mateus4k/runcpp.svg
[s3]: https://img.shields.io/github/issues/mateus4k/runcpp.svg
[s4]: https://img.shields.io/github/stars/mateus4k/runcpp.svg

## What is RunCpp?

RunCpp is an easy tool to compile and run C++ programs

## Features

* [x] Arguments --version and --help
* [x] Check and install dependencies
* [x] Turns on helpful warning messages with -Wall
* [x] Omits all symbol information from the executable file thus making it as small as possible with -s
* [x] Turns off a couple non-standard g++ additions with -pedantic-errors
* [x] Using the most recent revision of the ISO/IEC 14882 standard for the C++ compiler (C++17)
* [ ] Argument -o to custom output filename

## Installation
You need to follow these steps to run it.

```sh
$ git clone https://github.com/mateus4k/runcpp.git
$ cd runcpp/
$ sudo chmod u+x runcpp.sh
$ sudo cp runcpp.sh runcpp; sudo mv runcpp /usr/local/bin
```

## Dependencies

This tool need a C/C++ compiler. Run  `which gcc g++` or `command -v gcc g++` to see if you have it installed on your PC.
If that command doesn't output the code below you will need to install it.

```sh
/usr/bin/gcc
/usr/bin/g++
```

 - For Debian-based distros, run `sudo apt install gcc g++`.
 - For Arch-based distros, run `sudo pacman -S gcc g++`.
 - For RedHat-based distros, run `sudo dnf install gcc gcc-c++`.
 - For OpenSuse-based distros, run `sudo zypper install gcc g++`

## Usage

To compile any *.cpp* source code run:
```sh
$ runcpp [arguments] <file>
```

## Development

Want to contribute? Great!
Please follow the "fork-and-pull" git workflow.
1. **Fork** the repo on GitHub
2. **Clone** the project to your own machine
3. **Commit** changes to your own branch
4. **Push** your work back up to your fork
5. Submit a **Pull request** so that I can review your changes
