#!/bin/bash
echo 
read -p "Enter first number=" value1
echo
read -p "Enter second number=" value2
let ans= $value1 * $value2
echo "$ans" 
