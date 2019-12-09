#!/bin/bash

if [[ -z  ${1} ]]; then
	echo "Give me the name of ONE java file with a main and stuff!"
	exit 1
fi

javac ${1}.java
jar cf ${1}.jar ${1}.class

native-image -cp ${1}.jar ${1}
