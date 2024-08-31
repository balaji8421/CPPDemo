# Stage 1: Build
FROM gcc:latest as builder
WORKDIR /app

# Copy only necessary files for dependencies and build
COPY CMakeLists.txt ./
COPY src/ ./src/
RUN cmake . && make

# Stage 2: Run
FROM alpine:latest
WORKDIR /app

# Copy the built executable from the builder stage
COPY --from=builder /app/myapp .

# Run the application
CMD ["./myapp"]