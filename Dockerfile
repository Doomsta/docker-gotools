FROM golang:1.13

RUN go get -u github.com/mgechev/revive
RUN go get -u gitlab.com/opennota/check/cmd/structcheck
RUN go get -u gitlab.com/opennota/check/cmd/aligncheck
RUN go get -u gitlab.com/opennota/check/cmd/varcheck
RUN go get -u github.com/kisielk/errcheck

RUN mkdir /working
WORKDIR /working
