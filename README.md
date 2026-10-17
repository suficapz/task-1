# AWS EC2 System Monitoring Using Bash

## Project Overview

This project is part of a 2-day assignment on Shell Scripting with AWS EC2, Bash, and Git.

The purpose of this project is to monitor an Ubuntu Linux server running on Amazon EC2 using a Bash script. It collects basic system information, saves monitoring output in a log file, and automates execution using Cron.

## Objectives

- Launch and connect to an Ubuntu EC2 instance.
- Install and use Git for version control.
- Create a Bash script to monitor system resources.
- Save monitoring output in a log file.
- Schedule automatic monitoring using Cron.
- Push project files to GitHub.

## Technologies Used

- **AWS EC2** – Cloud virtual server
- **Ubuntu Linux** – Operating system
- **Bash Shell Scripting** – Monitoring automation
- **Git** – Version control
- **GitHub** – Source code hosting
- **Cron** – Scheduled task automation

## Project Structure

```text
shell-assignment/
├── monitor.sh
├── monitor_logs.txt
└── README.md
```

## Monitoring Features

The `monitor.sh` script displays the following system information:

### 1. Running Services

Uses `systemctl` to list currently running system services.

### 2. CPU Usage

Uses `top` to display CPU statistics and process information.

### 3. Memory Usage

Uses `free -h` to display RAM usage in a human-readable format.

### 4. Disk Usage

Uses `df -h` to display disk space usage for mounted filesystems.

### 5. Report Formatting

Displays a monitoring report heading, date and time, and clear section headings.

## Setup and Execution

### Step 1: Create the Project Directory

```bash
mkdir shell-assignment
cd shell-assignment
```

### Step 2: Install Git

```bash
sudo apt update
sudo apt install git -y
```

Verify the installation:

```bash
git --version
```

### Step 3: Initialize Git

```bash
git init
```

### Step 4: Create the Monitoring Script

```bash
nano monitor.sh
```

Add the monitoring script, save the file, and exit the editor.

### Step 5: Give Execution Permission

```bash
chmod +x monitor.sh
```

### Step 6: Run the Script

```bash
./monitor.sh
```

### Step 7: Save Monitoring Output

```bash
./monitor.sh >> monitor_logs.txt 2>&1
```

This appends normal output and error messages to `monitor_logs.txt`.

To view the log file:

```bash
cat monitor_logs.txt
```

## Automated Monitoring Using Cron

Cron is used to execute the monitoring script automatically at a scheduled time.

Open the Cron configuration:

```bash
crontab -e
```

Add the following entry, replacing the example paths with the actual absolute paths on your EC2 instance:

```cron
0 9 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_logs.txt 2>&1
```

This schedules the monitoring script to run daily at 9:00 AM server time.

Verify the scheduled job:

```bash
crontab -l
```

## Git and GitHub

Add the project files to Git:

```bash
git add monitor.sh README.md monitor_logs.txt
```

Commit the changes:

```bash
git commit -m "Add system monitoring script and documentation"
```

Connect your GitHub repository:

```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/shell-assignment.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username.

For subsequent updates:

```bash
git add .
git commit -m "Update monitoring project"
git push
```

## Expected Results

After completing the project:

- The monitoring script displays system information.
- Monitoring output is saved in a log file.
- Cron is configured to run the script automatically.
- Git tracks project changes.
- The project is available in a GitHub repository.

## Learning Outcomes

This project provides practical experience with:

- Linux commands and Bash scripting.
- Basic server resource monitoring.
- Log file management.
- Cron job scheduling.
- Git commits and GitHub repositories.
- Basic AWS EC2 administration.

## Author

**Name:** MOHAMMED SUFIYAN

**Project:** AWS EC2 System Monitoring Using Bash

**GitHub:** [https://github.com/suficapz

---

*This project was developed as part of a Shell Scripting with AWS EC2, Bash, and Git assignment.*
