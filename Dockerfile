FROM golang:1.13

RUN go get github.com/mgechev/revive \
  && go get gitlab.com/opennota/check/cmd/structcheck \
  && go get gitlab.com/opennota/check/cmd/aligncheck \
  && go get gitlab.com/opennota/check/cmd/varcheck \
  && go get github.com/kisielk/errcheck \
  && go get github.com/smartystreets/goconvey \
  && go get github.com/go-playground/overalls \
  && go get golang.org/x/tools/cmd/goimports

RUN mkdir /working
WORKDIR /working


CMD [ "echo", "gotools: specify the command to run" ]
