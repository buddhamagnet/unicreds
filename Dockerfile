# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM docker.io/economist/base-golang:latest

RUN apk add --update alpine-sdk

ADD . $GOPATH/src/github.com/buddhamagnet/unicreds

WORKDIR /$GOPATH/src/github.com/buddhamagnet/unicreds

RUN mkdir -p build/Linux/unicreds

RUN make packages
