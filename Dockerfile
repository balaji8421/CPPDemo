# Stage 1: Build
FROM gcc:11 as builder

# Set the working directory
WORKDIR /usr/src/app

# Copy the source code
COPY . .

#Clean up the preious build
RUN rm -rf build

# Install dependencies
RUN apt-get update && apt-get install -y cmake

#
# Create a build directory and compile the application
RUN mkdir -p build && cd build && cmake .. && make

# Stage 2: Runtime
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy the compiled binary from the builder stage
COPY --from=builder /usr/src/app/build/hello_world .

# Run the binary
CMD ["./hello_world"]