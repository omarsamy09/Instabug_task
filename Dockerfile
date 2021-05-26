FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]

jenkins tokn :  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