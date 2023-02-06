FROM golang:alpine AS build
WORKDIR /opt/gotuna
COPY . .
RUN go build examples/fullapp/cmd/main.go

FROM alpine:3.14
WORKDIR /opt/gotuna/
COPY --from=build /opt/gotuna/main .
EXPOSE 8888
CMD ["./main"]

