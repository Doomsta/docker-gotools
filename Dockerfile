FROM golang:alpine AS build

RUN apk add --no-cache bash git openssh

RUN go get github.com/mgechev/revive \
  && go get gitlab.com/opennota/check/cmd/structcheck \
  && go get gitlab.com/opennota/check/cmd/aligncheck \
  && go get gitlab.com/opennota/check/cmd/varcheck \
  && go get github.com/kisielk/errcheck \
  && go get github.com/smartystreets/goconvey \
  && go get github.com/go-playground/overalls \
  && go get github.com/msoap/go-carpet \
  && go get github.com/cweill/gotests/... \
#  && go get github.com/360EntSecGroup-Skylar/goreporter \
  && go get golang.org/x/tools/cmd/goimports \
  && go get github.com/psampaz/go-mod-outdated \
  && go get github.com/jondot/goweight

FROM alpine:latest
RUN apk add --no-cache bash git openssh graphviz
COPY --from=build /go/bin/* /usr/local/bin/
RUN mkdir /working
WORKDIR /working
VOLUME /working
EXPOSE 8080
CMD [ "echo", "gotools: specify the command to run" ]
