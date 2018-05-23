FROM alpine:latest
ADD hello.class hello.class
RUN apk --update add openjdk8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "hello"]
