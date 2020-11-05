FROM golang:latest
WORKDIR /gochain
RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
COPY app.go blockchain.html ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
EXPOSE 8000 
ENV IP=localhost
CMD ["./app"]