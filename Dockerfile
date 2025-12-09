FROM golang:1.23-alpine AS base
 
WORKDIR /app
  
RUN go mod download

COPY go.mod .

RUN go build -o main .

EXPOSE 8080
 
CMD ["./main"]

FROM gcr.io/distroless/base

COPY --from=base /app/main .

COPY --from=base src/ ./static/

EXPOSE 8080

CMD ["./main"]