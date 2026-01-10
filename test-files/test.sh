#!/bin/bash
# Bash Test File for Theme Visibility Testing
# This file contains various Bash syntax elements
# TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
# EXAMPLE: This EXAMPLE word appears multiple times for testing

# Variables - SAMPLE variable declarations
SIMPLE_STRING="Hello World"  # TESTWORD test variable
NUMBER=42  # EXAMPLE number
ARRAY=(1 2 3 4 5)  # DUPLICATE array

# Constants - REPEATED constant definitions
readonly CONFIG_FILE="/etc/myapp/config.conf"  # SAMPLE config
readonly MAX_RETRIES=3  # TESTWORD max retries

# Function with parameters - DUPLICATE function EXAMPLE
function get_user_info() {
    local username=$1  # TESTWORD parameter
    local max_retries=${2:-3}  # EXAMPLE retry count

    echo "Getting information for: $username"  # SAMPLE output

    # Command substitution - REPEATED pattern
    local current_date=$(date +%Y-%m-%d)  # TESTWORD date
    local user_count=$(who | wc -l)  # DUPLICATE count

    return 0
}

# Conditional statements - EXAMPLE conditional logic
if [ $NUMBER -gt 40 ]; then
    echo "Number is greater than 40"  # TESTWORD output
elif [ $NUMBER -eq 40 ]; then
    echo "Number is exactly 40"  # SAMPLE output
else
    echo "Number is less than 40"  # DUPLICATE output
fi

# String comparisons - REPEATED comparison test
if [[ "$SIMPLE_STRING" == "Hello World" ]]; then
    echo "String matches!"  # TESTWORD match
fi

# File tests
if [[ -f "$CONFIG_FILE" ]]; then
    echo "Config file exists"
elif [[ -d "/etc/myapp" ]]; then
    echo "Directory exists but not the file"
fi

# For loop
for item in "${ARRAY[@]}"; do
    echo "Processing item: $item"
done

# C-style for loop
for ((i=0; i<5; i++)); do
    echo "Counter: $i"
done

# While loop
counter=0
while [ $counter -lt 5 ]; do
    echo "While counter: $counter"
    ((counter++))
done

# Case statement
case "$SIMPLE_STRING" in
    "Hello World")
        echo "Found greeting!"
        ;;
    "Goodbye")
        echo "Found farewell!"
        ;;
    *)
        echo "Unknown string"
        ;;
esac

# Pipeline and command chaining
ps aux | grep bash | awk '{print $2, $11}' | head -n 5

# Regex matching
if [[ "$SIMPLE_STRING" =~ ^Hello[[:space:]] ]]; then
    echo "Regex matched!"
fi

# Here document
cat << EOF
This is a here document
It can span multiple lines
Variable interpolation: $NUMBER
EOF

# Error handling
set -e  # Exit on error
set -u  # Exit on undefined variable
set -o pipefail  # Exit on pipe failure

# Trap for cleanup
trap 'echo "Script interrupted"; exit 1' INT TERM

# TODO: This is a TODO comment - TESTWORD marker
# FIXME: This is a FIXME comment - EXAMPLE marker
# NOTE: This is a NOTE comment - SAMPLE DUPLICATE REPEATED markers
# TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
