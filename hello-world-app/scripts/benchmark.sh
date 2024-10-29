#!/bin/bash

# Install Apache Benchmark
sudo apt update
sudo apt install -y apache2-utils

# Run benchmark test
ab -n 1000 -c 10 http://<your-service-url>
