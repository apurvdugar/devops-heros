#!/bin/bash

# ============================================
# System Information Script
# DevOps Homework - Shell Scripting Task
# ============================================

# --- Print current date ---
current_date=$(date)
echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="
echo ""
echo "Current Date & Time: $current_date"

# --- Print hostname ---
current_hostname=$(hostname)
echo "Hostname: $current_hostname"

# --- Print username ---
current_user=$(whoami)
echo "Username: $current_user"

echo ""
echo "=========================================="
echo "       DISK USAGE"
echo "=========================================="
echo ""

# --- Print disk usage ---
df -h

echo ""
echo "=========================================="
echo "       RUNNING PROCESSES (Top 15)"
echo "=========================================="
echo ""

# --- Print running processes ---
ps aux | head -16

echo ""
echo "=========================================="
echo "       USER INPUT SECTION"
echo "=========================================="
echo ""

# --- Take user input ---
read -p "Enter your name: " user_name
read -p "Enter your roll number: " roll_no
read -p "Enter a directory name to create: " dir_name
read -p "Enter a filename to create: " file_name

echo ""
echo "Hello, $user_name!"
echo "Roll Number: $roll_no"

# --- Create a directory using mkdir ---
mkdir -p "$dir_name"
echo "Directory '$dir_name' created successfully."

# --- Create a file using touch ---
touch "$dir_name/$file_name"
echo "File '$file_name' created inside '$dir_name'."

# --- Store running processes info in the file using > output redirection ---
ps aux > "$dir_name/$file_name"
echo "Running processes have been saved to '$dir_name/$file_name'."

echo ""
echo "=========================================="
echo "       SUMMARY"
echo "=========================================="
echo ""
echo "Date:       $current_date"
echo "Hostname:   $current_hostname"
echo "User:       $current_user"
echo "Name:       $user_name"
echo "Roll No:    $roll_no"
echo "Directory:  $dir_name"
echo "File:       $dir_name/$file_name"
echo ""
echo "Script execution completed successfully!"
