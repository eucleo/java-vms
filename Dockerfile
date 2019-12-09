FROM oracle/graalvm-ce

FROM oracle/graalvm-ce:19.3.0
LABEL maintainer "price clark <price@eucleo.com>"

RUN yum -y update
RUN yum -y install make
RUN gu install native-image


RUN useradd -ms /bin/bash sherlock; exit 0
WORKDIR /home/sherlock
RUN mkdir case-files
WORKDIR /home/sherlock/case-files
COPY . .
RUN chown -R sherlock:sherlock /home/sherlock
USER sherlock
WORKDIR /home/sherlock/case-files

RUN ./build-primitives-and-objects.sh PrimitivesAndObjects

RUN ./primitivesandobjects > graal_jar.txt
RUN java -cp PrimitivesAndObjects.jar PrimitivesAndObjects > normal_jar.txt
