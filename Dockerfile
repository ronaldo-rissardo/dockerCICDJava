FROM alpine:latest

RUN apk update

RUN apk -Uuv add python py-pip
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN apk add openjdk8
RUN apk add maven
RUN mvn -v
run java -version