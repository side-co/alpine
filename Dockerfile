FROM alpine:3.19.0

WORKDIR /

RUN apk update \
    # Update and updgrage alpine packages
    && apk upgrade \
    # Install required packages
    && apk --no-cache add bash ca-certificates libc6-compat tzdata zlib=1.2.12-r3

EXPOSE 2000/udp

CMD ["bash"]
