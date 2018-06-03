#FROM java:8
#COPY HelloWorld.java /
#RUN javac HelloWorld.java
#ENTRYPOINT ["java","HelloWorld"]
FROM java:8
MAINTAINER paco
COPY src /home/root/javahelloworld/src
ADD file.tar /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO test
ENV FOO2 test
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
