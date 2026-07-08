# 🚀 Auto Scaling + ALB + CloudWatch Setup

## 📌 Overview
This project demonstrates a highly available and scalable AWS architecture using:
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- EC2 Instances
- CloudWatch Monitoring

---

## 🏗️ Architecture

ALB → Auto Scaling Group → EC2 → CloudWatch

---

## ⚙️ Steps Implemented

### 1. VPC Setup
- Created custom VPC (10.0.0.0/16)
- Created 2 public subnets in different AZs
- Attached Internet Gateway
- Configured Route Table (0.0.0.0/0 → IGW)

---

### 2. EC2 Setup
- Launched EC2 instance
- Installed Apache web server
- Allowed HTTP (80) and SSH (22) in Security Group

---

### 3. Launch Template
- Created launch template with:
  - Amazon Linux 2
  - t2.micro instance
  - Security group
  - User data script:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello from Auto Scaling Server" > /var/www/html/index.html


🧪 Testing
Step 1: SSH into EC2
ssh -i key.pem ec2-user@<public-ip>
Step 2: Install stress tool
sudo yum install -y stress
Step 3: Increase CPU load
stress --cpu 4
