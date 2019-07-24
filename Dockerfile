FROM alpine:3.10.1

WORKDIR /

RUN apk update \
    # Update and updgrage alpine packages
    && apk upgrade \
    # Install required packages
    && apk --no-cache add bash ca-certificates tzdata 

EXPOSE 2000/udp

CMD ["bash"]