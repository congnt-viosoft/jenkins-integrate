FROM ubuntu:16.04
RUN apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common;
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jdk openjdk-8-jre wget build-essential git unzip
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/
RUN echo export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/ >> /.bashrc
RUN mkdir /android-sdk/
WORKDIR /android-sdk/
RUN wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
RUN unzip sdk-tools-linux-3859397.zip
RUN yes | tools/bin/sdkmanager --update
RUN tools/bin/sdkmanager "platforms;android-23" "build-tools;23.0.3" "ndk-bundle" "cmake;3.6.4111459"
RUN yes | tools/bin/sdkmanager --licenses
ENV ANDROID_HOME=/android-sdk
ENV ANDROID_NDK_HOME=/android-sdk/ndk-bundle
RUN echo export ANDROID_HOME=/android-sdk >> /.bashrc
RUN echo export ANDROID_NDK_HOME=/android-sdk/ndk-bundle >> /.bashrc
