# Terraform IBM Cloud Code Engine Serverless Setup for Loan Risk AI Agents sample application

This Terraform configuration deploys an IBM Cloud Code Engine serverless project, container registry, and associated resources for the AI Agent for Loan Risk application. It automates provisioning of the following components:

- IBM Cloud Resource Group
- Code Engine Project 
- Code Engine Secret 
- IBM Container Registry Namespace
- Code Engine Build (Docker image build from GitHub source)
- Code Engine Application (serverless container deployment with environment variables)

## Reference Architecture

![loan-risk-code-engine](./reference-architecture/ce-app-da.svg)

## Usage

1. **Clone the Repository**  

Start by cloning the repository that contains the Terraform configuration:
```bash
git clone https://github.com/IBM/agentic-iac-lab-materials
cd agentic-iac-lab-materials
```

2. **Configure Your Variables**  

Configure your variables in a `terraform.tfvars` file or via environment variables:  
- `ibmcloud_api_key` - Your IBM Cloud API key  
- `watsonx_project_id` - watsonx.ai project ID  

> 💡 It's recommended to store sensitive values like `ibmcloud_api_key` securely and avoid committing them to version control.

3. **Initialize Terraform**  

Initialize the working directory to download required providers and modules:
```bash
terraform init
```

4. **Review the Execution Plan**  

Generate and review the Terraform plan to see what resources will be created or changed:
```bash
terraform plan
```

5. **Deploy Resources**:  

To apply the Terraform configuration and provision the required IBM Cloud resources, run:
```bash
terraform apply
```
✅ When prompted, type `yes` to confirm the destruction of resources.

6. **Clean up and destroy resources**:  

To remove all provisioned IBM Cloud resources and clean up your environment, run:
```bash
terraform destroy
```
✅ When prompted, type `yes` to confirm the destruction of resources.