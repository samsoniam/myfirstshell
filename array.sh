#!/bin/bash
echo "array in shell script "
PERSONS=("RAHUL" "RAVI" "SANJU")
echo "first person is  ${PERSONS[0]}  "
echo "all persons is  ${PERSONS[@]}  "
