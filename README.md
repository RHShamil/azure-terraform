# Terraform Azure Provisioning Virtual Machines
Terraform is an open-source infrastructure as code (IaC) tool that enables you to define and manage cloud infrastructure resources using a declarative configuration language. It supports multiple cloud platforms, including Microsoft Azure.

## Table of Contents
  - [How it works on Azure](#how-it-works-on-azure)
  - [What this project will do](#what-this-project-will-do)
  - [Variables need to be changed](#variables-need-to-be-changed)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Connect into the Virtual Instances](#connect-into-the-virtual-instances)
  - [License](#license)

## How it works on Azure
In summary, using Terraform with Azure can help you automate the deployment and management of your Azure resources, while also providing greater control and reproducibility over your infrastructure.

## What this project will do
In this article, you'll learn how to:

- Create a resource group
- Create tags for all resources
- Create a virtual network
- Create a subnet
- Create a public IP address
- Create a network security group and SSH inbound rule
- Create a virtual network adapter card
- Connect the network security group to the network adapter
- Create a storage account for boot diagnostics
- Create SSH key
- Create a virtual machine
- Create an Azure recovery service vault
- Create a backup policy
- Configure the vm disk with backup policy
- Use SSH to connect to the virtual machine

## Variables need to be changed
In the variables.tf file you need to change the "default" parameter of the variables to your desired values. 

- resource_group_location
- resource_group_name
- resource_tags
- vm_name
- vm_computer_name
- vm_admin_username
- os_disk_name
- backup_vault_name
- backup_policy_name
- subscription_id


## Installation
You need to first install Terraform & azurecli on your local machine or a build server. You can download Terraform & azurecli from the official website. 
- You need to run the `az login` command to log into your azure account
- Use `az account show` command to see the connected azure account
- Use `az account list --output table` command to get the subscription id


## Usage
- Azure Account: You must have an active Microsoft Azure account. If you do not have one already, you can sign up for a free Azure trial account.

- Initialize Terraform: Before you can use Terraform to create or modify Azure resources, you need to initialize Terraform in your project directory. The initialization downloads the required Terraform modules and plugins. Run the terraform command:

`terraform init`

- Run Terraform commands: Once you have initialized Terraform, you can run Terraform commands to create or modify Azure resources. For example, you can use the terraform plan command to preview the changes Terraform will make to your infrastructure, and the terraform apply command to apply those changes. Run the terraform command:

`terraform plan`
`terraform apply`

- Destroy resources: When you no longer need the resources you created with Terraform, you can use the terraform destroy command to remove them. This ensures that you are not billed for resources that are no longer in use.  Run the terraform command:

`terraform destroy`

## Connect into the Virtual Instances
- First you need to run the `terraform output` command to get the SSH key:

`terraform output -raw tls_private_key > id_rsa`

- Run the terraform command below to check more details:

`terraform output public_ip_address`

- Use the SSH to connect into the instance:

`ssh -i id_rsa azureuser@<public_ip_address>`


## License
GitHub GPL License.



