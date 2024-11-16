# Use alpine as the base image for the build stage
FROM alpine:latest AS builder

# Install musl-dev, gcc, and make in the build stage
RUN apk add --no-cache build-base

# Set the working directory
WORKDIR /app

# Copy the project files into the Docker image
COPY . .

# Run make to build the project using musl-gcc
RUN make -C SRC

# Create the final stage
FROM scratch

# Copy the built static binary from the builder stage
COPY --from=builder /app/LKH /bin/LKH

# Set the working directory
WORKDIR /app

# Set the entrypoint to run the built executable
ENTRYPOINT ["/bin/LKH"]
