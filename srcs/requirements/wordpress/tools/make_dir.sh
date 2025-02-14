#!/bin/bash

# Define the full path for the data directory
DATA_DIR="/home/${USER}/data"
MARIADB_DIR="${DATA_DIR}/mariadb"
WORDPRESS_DIR="${DATA_DIR}/wordpress"

# Check if the main data directory exists
if [ ! -d "$DATA_DIR" ]; then
    mkdir -p "$DATA_DIR"
    echo "Created directory: $DATA_DIR"
fi

# Check if the mariadb directory exists
if [ ! -d "$MARIADB_DIR" ]; then
    mkdir -p "$MARIADB_DIR"
    echo "Created directory: $MARIADB_DIR"
fi

# Check if the wordpress directory exists
if [ ! -d "$WORDPRESS_DIR" ]; then
    mkdir -p "$WORDPRESS_DIR"
    echo "Created directory: $WORDPRESS_DIR"
fi
