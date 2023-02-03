FROM golang:alpine AS build
WORKDIR /opt/gotuna
COPY . .
RUN go build examples/fullapp/cmd/main.go

FROM debian:11.6-slim
WORKDIR /opt/gotuna/
COPY --from=build /opt/gotuna/main .
EXPOSE 8888
CMD ["./main"]

