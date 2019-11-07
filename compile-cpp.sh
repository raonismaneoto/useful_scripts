#!/bin/bash
cpp_program=$1
shift
executable=

while getopts "cd:a" option
do
  case $option in
    c)  executable=${2-a}
        g++ -std=c++11 $cpp_program -o $executable
    ;;
    d)  directory=$OPTARG
        executable=${3-a}
        cd $directory
        g++ -std=c++11 $cpp_program -o $executable
    ;;
    a) cd ~/workspace/aa
       executable=${2-a}
       g++ -std=c++11 $cpp_program -o $executable
    ;;
    ?) echo "USAGE:"
       echo "(1) program.cpp -c *executable_name"
       echo "(2) program.cpp -d directory_path *executable_name"
       echo "(3) program.cpp -a *executable_path"
       echo "* for optional parameters"
  esac
done

if [ -n "$executable" ]
then
  ./$executable
fi
