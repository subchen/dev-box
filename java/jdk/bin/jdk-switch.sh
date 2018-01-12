#!/bin/bash -e

JDK_VERSION=$1

if [ -z "$JDK_VERSION" ]; then
    echo "Usage: $(basename $0) <JDK-VERSION>"
    exit 1
fi

if [ ! -d "/usr/local/jdk/$JDK_VERSION" ]; then
    echo "No JDK found: /usr/local/jdk/$JDK_VERSION"
    exit 1
fi

files="
    java javac javadoc jar javaws
    keytool jarsigner
    jps jstack jmap jstat jinfo jvisualvm
    jjs javap javah jdeps
"
for file in $files; do
    ln -sf /usr/local/jdk/$JDK_VERSION/bin/$file /usr/local/bin/$file
done

