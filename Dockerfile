# Use an official GCC compiler image as a parent image
FROM gcc:11

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

#Clean up the preious build
RUN rm -rf build

# Install CMake
RUN apt-get update && apt-get install -y cmake

# Create a build directory and compile the application
RUN mkdir -p build && cd build && cmake .. && make

# Command to run your executable
CMD ["./build/hello_world"]