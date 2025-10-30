# Stage 1: Build environment
FROM alpine:latest AS builder

# Install build dependencies
RUN apk add --no-cache gcc musl-dev

# Copy source code
COPY ./lb.c .

# Build the application (replace with your build command)
RUN gcc lb.c -lm -o lookbusy 

# Stage 2: Runtime environment
FROM alpine:latest
COPY --from=builder /lookbusy .
CMD ["/lookbusy", "-c", "20-25" ]
