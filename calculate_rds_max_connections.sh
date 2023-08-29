#!/bin/bash

# Get memory size in GB from user input
read -p "Enter memory size of RDS instance in GB: " memory_size_gb

# Get database engine choice from user input
echo "Choose the database engine:"
echo "1. MySQL/MariaDB (except MariaDB 10.6)"
echo "2. MariaDB 10.6"
echo "3. Oracle"
echo "4. PostgreSQL"
read -p "Enter the number of your choice: " db_engine_choice

# Convert memory size to bytes
memory_size_bytes=$((memory_size_gb * 1024 * 1024 * 1024))

case $db_engine_choice in
    1)  # MySQL
        max_connections=$((memory_size_bytes / 12582880))
        ;;
    2)  # MariaDB
        max_connections=$((memory_size_bytes / 25165760))
        max_connections=$((max_connections < 12000 ? max_connections : 12000))
        ;;
    3)  # Oracle
        max_connections=$((memory_size_bytes / 9868951))
        max_connections=$((max_connections < 20000 ? max_connections : 20000))
        ;;
    4)  # PostgreSQL
        max_connections=$((memory_size_bytes / 9531392))
        max_connections=$((max_connections < 5000 ? max_connections : 5000))
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo "Memory size in bytes: $memory_size_bytes"
echo "Maximum possible connections: $max_connections"

