# Personal Resume CI/CD Pipeline

A modern, automated CI/CD pipeline for deploying a containerized resume website to Azure using GitHub Actions, Docker, and Terraform.

---

## 🚀 Overview

This project demonstrates a full DevOps workflow:
- **Source code** is managed in GitHub.
- **CI/CD** is orchestrated by GitHub Actions.
- **Docker** builds and pushes the website image to Docker Hub.
- **Terraform** provisions Azure infrastructure (Resource Group, VNet, App Service Plan, Linux Web App).
- **Azure Web App** hosts the containerized static resume site.

---

## 🗂️ Project Structure

```
github_actions_project/
├── .github/workflows/main.yml      # CI/CD pipeline definition
├── Dockerfile                      # Docker build for Nginx static site
├── index.html                      # Main website HTML
├── styles.css                      # CSS styles
├── script.js                       # JavaScript functionality
├── .gitignore                      # Git ignore rules
├── .dockerignore                   # Docker ignore rules
├── Terraform/
│   ├── main.tf                     # Terraform root module
│   ├── provider.tf                 # Providers (Azure, random)
│   ├── backend.tf                  # Remote state backend config
│   ├── .terraform.lock.hcl         # Provider lock file
│   ├── app_service/
│   │   ├── app_service.tf          # App Service Plan & Linux Web App
│   │   ├── outputs.tf              # Outputs for web app
│   │   └── variables.tf            # Input variables
│   └── Resource_group/
│       ├── RG.tf                   # Resource Group & VNet
│       └── outputs.tf              # Outputs for resource group
└── README.md                       # Project documentation
```

---

## ⚙️ How It Works

1. **Push to `main` branch** triggers the workflow.
2. **Docker Build & Push:**  
   - Builds the static site Docker image.
   - Pushes it to Docker Hub.
3. **Terraform Destroy & Apply:**  
   - Destroys existing Azure infra (for a clean slate).
   - Provisions Resource Group, VNet, App Service Plan, and Linux Web App.
   - Deploys the latest Docker image to Azure Web App.
4. **Website is live** at the Azure Web App URL (output in workflow logs).

---

## 🛠️ Technologies Used

- **HTML5, CSS3, JavaScript** (Frontend)
- **Docker** (Containerization)
- **Nginx** (Web server)
- **Terraform** (Infrastructure as Code)
- **Azure** (Cloud platform)
- **GitHub Actions** (CI/CD)
- **Docker Hub** (Container registry)

---

## 🚦 CI/CD Pipeline

- **Workflow file:** `.github/workflows/main.yml`
- **Jobs:**
  - `docker_build_and_push`: Builds and pushes Docker image.
  - `terraform_infra_creation`: Destroys and recreates Azure infrastructure, deploys the app.

---

## 🔒 Secrets & Sensitive Data

All credentials and sensitive data are stored in **GitHub Secrets**:
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_SUBSCRIPTION_ID`, `ARM_TENANT_ID` (Azure)
- `DOCKER_USERNAME`, `DOCKER_PASSWORD` (Docker Hub)

No secrets are stored in code or committed to the repository.

---

## 🏗️ Infrastructure Provisioned

- **Resource Group:** `my_web_app_rg`
- **Virtual Network:** `my_web_app_vnet`
- **App Service Plan:** Linux, B1 tier
- **Linux Web App:** Runs the Docker container from Docker Hub

---

## 🚀 Deployment

### 1. Prerequisites

- Azure subscription
- Docker Hub account
- GitHub repository with this code
- GitHub Secrets configured

### 2. Deploy

- Push any change to the `main` branch.
- The pipeline will build, push, destroy, and recreate the infrastructure and deploy the latest site.

### 3. Access

- The deployed site URL is output by Terraform and shown in the workflow logs.

---


**Author:** Sherif Abdelhameed  
[LinkedIn](https://linkedin.com/in/sherifabdelhameed0907)
