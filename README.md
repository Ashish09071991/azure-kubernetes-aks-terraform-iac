# ☸️ Enterprise Azure Kubernetes Service (AKS) — Terraform IaC

Production-grade, modular Terraform configuration for provisioning a high-availability **Azure Kubernetes Service (AKS)** cluster with dedicated System and User node pools, Azure CNI networking, and Azure Monitor integration.

Developed by **[Ashish Pandey](https://github.com/Ashish09071991)** — Senior DevOps Engineer.

---

## 🌟 Key Architecture Highlights

* **Node Pool Separation:**
  * **System Node Pool:** Dedicated to critical Kubernetes system pods (CoreDNS, metrics-server) with only_critical_addons_enabled = true.
  * **User Workload Pool:** Autoscaling pool (min 1, max 5) dedicated to application workloads.
* **Networking (Azure CNI):** VNet-native pod IP allocation with integrated Azure Network Policies.
* **Observability:** Pre-integrated with Azure Log Analytics Workspace via Container Insights (oms_agent).
* **Security & Identity:** System-assigned Managed Identity with RBAC-ready integration.

---

## 📁 Repository Structure

\\\
├── main.tf                 # Core infrastructure (RG, VNet, Subnet, AKS Cluster, Node Pools, Log Analytics)
├── variables.tf            # Configurable inputs with enterprise defaults
├── outputs.tf              # Cluster endpoints, IDs, and OIDC issuer outputs
└── README.md               # Architecture and usage guide
\\\

---

## 🚀 Deployment Instructions

### 1. Initialize Terraform
\\\ash
terraform init
\\\

### 2. Validate & Plan
\\\ash
terraform validate
terraform plan -out=tfplan
\\\

### 3. Apply Infrastructure
\\\ash
terraform apply tfplan
\\\

### 4. Connect with Kubectl
\\\ash
az aks get-credentials --resource-group rg-aks-prod-01 --name aks-prod-cluster
kubectl get nodes
\\\
"@

 = @"
*.tfstate
*.tfstate.*
crash.log
.terraform/
.terraform.lock.hcl
*.tfplan
