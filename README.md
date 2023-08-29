# Helper Scripts Repository

Welcome to the **helper-scripts** repository! This repository contains a collection of useful Bash scripts that can assist you in various tasks.

## Table of Contents

- [RDS Connections Calculator](#rds-connections-calculator)


---

## RDS Connections Calculator

### Overview

The `calculate_rds_max_connections.sh` script is designed to help you calculate the maximum possible connections to different database engines based on the memory size of an RDS instance. The script supports various database engines, including MySQL, MariaDB, Oracle, and PostgreSQL.

### Usage

1. Make sure you have Bash installed on your system.
2. Clone this repository: `git clone https://github.com/t0tt1/helper-scripts.git`.
3. Navigate to the repository's directory: `cd helper-scripts`.

Run the script as follows:

```bash
./calculate_rds_max_connections.sh
```

Follow the prompts to input the memory size of the RDS instance in GB and select the desired database engine. The script will calculate and display the maximum possible connections for the chosen engine.

### Sample Output

```
Enter memory size of RDS instance in GB: 16
Choose the database engine:
1. MySQL
2. MariaDB
3. Oracle
4. PostgreSQL
Enter the number of your choice: 2

Memory size in bytes: 17179869184
Maximum possible connections: 720
```
