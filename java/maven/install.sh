#!/bin/bash -e

MAVEN_VERSION=3.5.0
MAVEN_FILENAME=apache-maven-${MAVEN_VERSION}-bin.tar.gz
MAVEN_HOME=/usr/local/maven/$MAVEN_VERSION

echo "Downloading maven-$MAVEN_VERSION ..." \
 && proxy-sh curl -fSL https://archive.apache.org/dist/maven/maven-${MAVEN_VERSION:0:1}/${MAVEN_VERSION}/binaries/$MAVEN_FILENAME     -o $MAVEN_FILENAME \
 && proxy-sh curl -fSL https://archive.apache.org/dist/maven/maven-${MAVEN_VERSION:0:1}/${MAVEN_VERSION}/binaries/$MAVEN_FILENAME.md5 -o $MAVEN_FILENAME.md5 \
 && echo "$(cat $MAVEN_FILENAME.md5) $MAVEN_FILENAME" | md5sum -c \
 && mkdir -p $MAVEN_HOME \
 && tar -xzf $MAVEN_FILENAME -C $MAVEN_HOME --strip-components=1 \
 && rm -f $MAVEN_FILENAME $MAVEN_FILENAME.md5 \
 && ln -sf $MAVEN_HOME/bin/mvn /usr/local/bin/mvn
