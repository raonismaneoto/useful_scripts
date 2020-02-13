print_function=$1
root_dir=$2
recursive=$3

exec_for_one_dir () {
    dir=$1
    files=`ls $dir`
    print_function=$2
    for file in $files
    do
        if [ -d $file ]; then
            continue
        fi

        sed -i "/$print_function/d" $file
    done
}

if [ -z $recursive ]; then
    files=`ls $root_dir`
    for file in $files
    do
        if [ -d $file ]; then
            continue
        fi
        
        sed -i "/$print_function/d" $file
    done
else
    files=`ls $root_dir`
    exec_for_one_dir $root_dir $print_function
    for file in $files
    do
        if [ -d $file ]; then
            exec_for_one_dir $file $print_function
        fi
    done
fi
