#!/bin/bash

file_name=$1
touch $file_name

echo "#include <bits/stdc++.h>" >> $file_name

echo "" >> $file_name

echo "using namespace std;" >> $file_name

echo "" >> $file_name
echo "typedef long long ll;" >> $file_name


echo "" >> $file_name

echo "int main() {" >> $file_name

echo "  return 0;" >> $file_name

echo "}" >> $file_name

exit 0
