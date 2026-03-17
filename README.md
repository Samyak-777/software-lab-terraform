# Software Lab: Infrastructure as Code (IaC) using Terraform

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

Welcome to my **Infrastructure as Code (IaC)** software lab repository! This project demonstrates a progressive learning journey in automating, managing, and provisioning infrastructure using **Terraform** and **Docker**.

---

## Lab Objective
The objective of this lab is to understand how infrastructure can be created, modified, and managed using configuration files instead of manual setup. 

Throughout this lab, I have implemented:
- The core Terraform workflow (`init`, `plan`, `apply`, `destroy`).
- Input variables, output variables, and environment-specific `.tfvars`.
- Reusable Terraform **Modules**.
- Containerized infrastructure provisioning via the **Docker Provider**.
- Dynamic resource creation using the `for_each` meta-argument.
- Continuous Integration (CI) validation using **GitHub Actions**.

---

## Repository Structure

```text
terraform-lab/
│
├── .github/workflows/       # CI/CD Automation Pipeline
│   └── terraform-check.yml
│
├── day1/                    # Assignment 1: Intro to Terraform
│   ├── main.tf
│   └── README.md
│
├── day2/                    # Assignment 2: Variables & Multiple Configs
│   ├── main.tf
│   ├── dev.tfvars
│   ├── prod.tfvars
│   └── README.md
│
├── day3/                    # Assignment 3: Managing Containers (Docker)
│   ├── main.tf
│   └── README.md
│
├── day4/                    # Assignment 4: Terraform Modules
│   ├── main.tf
│   ├── modules/nginx_container/
│   │   └── main.tf
│   └── README.md
│
├── day5/                    # Assignment 5: Dynamic Infrastructure Creation
│   ├── main.tf
│   └── README.md
│
├── .gitignore               # Ignores local state files and directories
└── README.md                # Root Documentation

```

## Assignments Breakdown

### 🔹 Day 1: Introduction to Terraform
- Learned the basic commands of Terraform.
- Utilized the `local` provider to generate a text file (`hello.txt`) dynamically on the host machine.
- Explored outputs to display absolute file paths.

### 🔹 Day 2: Variables and Environments
- Parameterized the configuration using variables.
- Implemented environment-based provisioning by using external variable files (`dev.tfvars` and `prod.tfvars`).
- Demonstrated how Terraform states track and replace resources when environment variables shift.

### 🔹 Day 3: Managing Docker Containers
- Integrated Terraform with the local Docker Engine.
- Pulled the `nginx:latest` image programmatically.
- Provisioned a Docker container and mapped internal port `80` to host port `8080`.

### 🔹 Day 4: Terraform Modules
- Embraced the DRY (Don't Repeat Yourself) principle by creating a custom, reusable Terraform module (`nginx_container`).
- Instantiated the module multiple times from the root configuration to spin up isolated containers running on different ports (`8081`, `8082`).

### 🔹 Day 5: Dynamic Infrastructure (Bonus Challenge)
- Used advanced Terraform expressions to dynamically generate infrastructure.
- Implemented the `for_each` meta-argument to iterate over a list of objects (`web1`, `web2`, `web3`), dynamically creating multiple Nginx containers and outputting an array of their URLs.

---

## CI/CD Automation (GitHub Actions)
This repository includes a fully automated GitHub Actions workflow (`terraform-check.yml`). 
Whenever code is pushed or a Pull Request is opened, the pipeline automatically runs:
1. `terraform fmt -check` (Code formatting validation)
2. `terraform validate` (Syntax validation)
3. `terraform plan` (Execution planning)

---

## Software Requirements & Prerequisites
To run these configurations locally, ensure the following are installed:
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) (v1.0+)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Ensure the Docker Engine is running)
- Git

---

## How to Run Locally

1. **Clone the repository:**
   ```bash
   git clone https://github.com/[Your GitHub Username]/software-lab-terraform.git
   cd software-lab-terraform
   ```

2. **Navigate to the specific assignment folder** (e.g., `day3`):
   ```bash
   cd day3
   ```

3. **Initialize the working directory:**
   ```bash
   terraform init
   ```

4. **Preview the infrastructure changes:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply -auto-approve
   ```

6. **Clean up resources when done:**
   ```bash
   terraform destroy -auto-approve
   ```

---

## Academic Integrity
*This repository represents my individual work for the Software Lab assignment. All configurations have been written, understood, and tested by me.*

**Submitted by:**
- **Name:** Samyak Borkar
- **Roll Number:** BT23CSE028
```
