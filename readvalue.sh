#!/bin/bash
echo "enter value one"
read -s VAL1
echo "enter value two"
read  -s VAL2
echo "math operations"
echo "addition of $VAL1 and  $VAL2 = $(($VAL1 + $VAL2))"
echo "subtraction of $VAL1 and  $VAL2 = $(($VAL1 - $VAL2))"
echo "multi of $VAL1 and  $VAL2 = $(($VAL1 * $VAL2))"
echo "division of $VAL1 and  $VAL2 = $(($VAL1 / $VAL2))"