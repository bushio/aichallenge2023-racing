#!/bin/bash

package_list=("vehicle_inputs_setter") 
# set package name
build_package=""
for item in "${package_list[@]}"
do
    build_package=$build_package" "$item
done
echo $build_package

cd ./aichallenge_ws
colcon build --packages-select $build_package
cd ..