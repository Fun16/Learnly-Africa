# learnly
linux assessment
# Linux Assessment — Learnly Africa

This project demonstrates setting up Docker on an **Amazon EC2 instance** and deploying a simple **WordPress + MySQL** stack using Bash scripts.

---

## 🚀 Project Overview

The goal of this assessment is to:
1. Create and configure a new user.
2. Install and enable Docker.
3. Pull and run WordPress and MySQL containers.
4. Access WordPress through the EC2 public IP.
5. Push all scripts and commands to GitHub.

---

## 🧩 Files in this Repository

| File | Description |
|------|--------------|
| **install_docker.sh** | Bash script that updates the system, installs Docker, enables and starts the Docker service. |
| **docker_setup.sh** | Bash script that pulls WordPress and MySQL images and runs both containers with environment variables configured. |

---

## ⚙️ Prerequisites

- An **Amazon Linux 2 EC2 Instance**
- A user with **sudo** privileges 
- **Git** and **Docker** installed

---

## 🪄 Installation Steps

### 1️⃣ Run the Docker installation script
```bash
chmod +x install_docker.sh
./install_docker.sh

