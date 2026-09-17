FROM alpine:3.16.2

WORKDIR /

RUN apk update \
    # Update and updgrage alpine packages
    && apk upgrade \
    # Install required packages
    && apk --no-cache add bash ca-certificates libc6-compat tzdata zlib=1.3.2-r0

EXPOSE 2000/udp

CMD ["bash"]
