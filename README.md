# aws-learning
AWS learning journey

I am learning AWS step by step.

## 🚀 Completed

- VPC
- EC2
- Load Balancer
- Auto Scaling Group
- CloudWatch Monitoring

---

## 🏗️ Architecture

ALB → Auto Scaling Group → EC2 → CloudWatch

---

## 🛠️ What I Implemented

- Created custom VPC with public subnets
- Configured Internet Gateway and Route Tables
- Launched EC2 instances with Apache
- Created Launch Template with user data
- Configured Auto Scaling Group (ASG)
- Attached Application Load Balancer (ALB)
- Implemented CloudWatch scaling policy

---

## 🧪 Testing

- Installed stress tool on EC2
- Increased CPU usage manually
- Observed scaling from 2 → 3 instances
- Verified auto healing and scaling

---

## 🧠 Key Learnings

- ASG works only with Launch Templates
- Security group must match VPC
- ALB requires multiple Availability Zones
- CloudWatch triggers scaling based on metrics
- Scaling is not instant (takes time)

---

## 📌 Next Steps

- Terraform (Infrastructure as Code)
- S3 static website hosting
- IAM roles and security
