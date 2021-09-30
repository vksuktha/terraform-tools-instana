# terraform-tools-instana

The script in this repository creates the VM (Virtual Server Instance) required for Instana installation in the IBM Cloud in given VPC and subnet and installs Instana in it.
## Clone the repository
```
git clone https://github.com/vksuktha/terraform-tools-instana.git
```
## Generate SSH key 
Instana VM requires an SSH Key, so run the following command to generate it:

```
cd terraform-tools-instana
chmod 755 create-ssh-keys.sh
./create-ssh-keys.sh
```
Public and private ssh key pair files (`ssh-instana.pub` and `ssh-instana`) gets generated in the project directory.

## Provide variable values
Rename the variable template file `terraform.tfvars.template` to `terraform.tfvars` file and assign values to all variables.
```
cp terraform.tfvars.tempalte terraform.tfvars
```
Then edit the `terraform.tfvars` file to define the following keys:

- ibmcloud_api_key
- resource_prefix
- sales_id
- agent_key
- region
- zone
- resource_group_name
- vpc_name
- subnet_name
- ssh_instana_public_key_file
- ssh_instana_private_key_file

## Module details
The module being used in this code is available at https://github.com/vksuktha/instana-terraform-scripts and example usage is as follows:
```
module "instana_instance" {
  source = "github.com/vksuktha/instana-terraform-scripts?ref=v1.0.1"

  name                 = var.resource_prefix
  resource_group_name  = var.resource_group_name
  region               = var.region
  ibmcloud_api_key     = var.ibmcloud_api_key
  subnet_name          = var.subnet_name
  vpc_name             = var.vpc_name
  zone                 = var.zone
  sales_id             = var.sales_id
  agent_key            = var.agent_key
  ssh_instana_public_key_file = var.ssh_instana_public_key_file
  ssh_instana_private_key_file = var.ssh_instana_private_key_file
}
```


## Install Instana
```
terraform init
terraform apply -auto-approve
```


IP address of the VM and credentials to access VM would be displayed after VM is provisioned and Instana setup is complete.

## Access Instana

Instana can be accessed though the browser `https://<IP_Address>`. Credentials to access Instana can also be sfound in the VM at `/instana/instana_credentials.txt`

Instana VM can be accessed using the SSH private key file generated in the project directory earlier.
```
ssh -i ssh_instana root@<IP_Address>
```
