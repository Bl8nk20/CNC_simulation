# Use a more specific base image with the exact version
FROM ubuntu:24.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies in a single RUN command to reduce layers
RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    make \
    git \
    doxygen \
    graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy CMake and source files
COPY CMakeLists.txt .
COPY Makefile .
COPY cmake/ cmake/
COPY configured/ configured/
COPY external/ external/
COPY src/ src/
COPY app/ app/

# Create build directory
RUN mkdir build
WORKDIR /build

# Configure and build the project
RUN cd .. && make compile
