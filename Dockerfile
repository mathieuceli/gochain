FROM golang:latest
WORKDIR /gochain
COPY * ./
RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o a.out
EXPOSE 8000

