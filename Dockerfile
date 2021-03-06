FROM albamc/base:1.0
MAINTAINER https://github.com/orgs/NAVER-CAMPUS-HACKDAY/teams/dockerloggingdriver

COPY . /go/src/github.com/NAVER-CAMPUS-HACKDAY/dockerloggingdriver
RUN cd /go/src/github.com/NAVER-CAMPUS-HACKDAY/dockerloggingdriver && go get && go build --ldflags '-extldflags "-static"' -o /usr/bin/dockerloggingdriver
RUN rm -rf /go /usr/local /usr/lib /usr/share
