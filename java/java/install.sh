#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)


JDK_VERSION=8u131
JDK_VERSION_PATCH=b11
JDK_DIR_HASH=d54c1d3a095b4ff2b6607d096fa80163

case "$(uname -s)" in
    "Linux")
        JDK_DOWNLOAD_URL="http://download.oracle.com/otn-pub/java/jdk/${JDK_VERSION}-${JDK_VERSION_PATCH}/${JDK_DIR_HASH}/jdk-${JDK_VERSION}-linux-x64.tar.gz"
        JDK_SHA256_SUM=62b215bdfb48bace523723cdbb2157c665e6a25429c73828a32f00e587301236
    ;;
    "Darwin")
        JDK_DOWNLOAD_URL="http://download.oracle.com/otn-pub/java/jdk/${JDK_VERSION}-${JDK_VERSION_PATCH}/${JDK_DIR_HASH}/jdk-${JDK_VERSION}-macosx-x64.tar.gz"
        JDK_SHA256_SUM=1d868f8de999de7531419b7ed54b73c47923c4f5843da0341c62ee8e4a231ea9
    ;;
esac

JDK_HOME=/usr/local/jdk/${JDK_VERSION}

echo "Downloading $(basename $JDK_DOWNLOAD_URL) ..." \
 && proxy-sh curl -fSL -H "Cookie: oraclelicense=accept-securebackup-cookie" $JDK_DOWNLOAD_URL -o jdk-x64.tar.gz \
 && echo "$JDK_SHA256_SUM jdk-x64.tar.gz" | sha256sum -c - \
 && mkdir -p $JDK_HOME \
 && tar -xzf jdk-x64.tar.gz -C $JDK_HOME --strip-components=1 \
 && rm -f jdk-x64.tar.gz


cp -f $CWD/root/usr/local/bin/jdk-switch.sh /usr/local/bin/
chmod +x /usr/local/bin/jdk-switch.sh
jdk-switch.sh $JDK_VERSION
