# Azure Terraform App

This project, `azure-terraform-app`, is designed to provision resources in Microsoft Azure using Terraform. It includes the necessary configuration files to define, manage, and output Azure resources.

## Project Structure

- `main.tf`: Contains the main configuration for the Terraform project, defining the Azure resources to be created.
- `variables.tf`: Defines input variables for the Terraform configuration, specifying types and default values.
- `outputs.tf`: Specifies output values that Terraform will display after resource creation, such as resource IDs and IP addresses.
- `provider.tf`: Configures the Azure provider, including authentication details and required provider version.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active Microsoft Azure account.
- Azure CLI installed and configured for authentication.

## Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/azure-terraform-app.git
   cd azure-terraform-app
   ```

2. Configure your Azure credentials:
   Ensure you are logged in to your Azure account using the Azure CLI:
   ```
   az login
   ```

3. Initialize the Terraform project:
   ```
   terraform init
   ```

4. Review the planned actions:
   ```
   terraform plan
   ```

5. Apply the configuration to create the resources:
   ```
   terraform apply
   ```

6. After deployment, review the output values to find important information about the created resources.

## Cleanup

To remove all resources created by this project, run:
```
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.