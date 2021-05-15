# aks-test

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
We can now create the Service Principal which will have permissions to manage resources in the specified Subscription using the following command:
$ az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
This command will output 5 values:
{
  "appId": "00000000-0000-0000-0000-000000000000",
  "displayName": "azure-cli-2017-06-05-10-41-15",
  "name": "http://azure-cli-2017-06-05-10-41-15",
  "password": "0000-0000-0000-0000-000000000000",
  "tenant": "00000000-0000-0000-0000-000000000000"
}

https://www.terraform.io/docs/language/settings/backends/azurerm.html
Environment variables

https://learn.hashicorp.com/tutorials/terraform/provider-versioning
Terraform versions

https://www.terraform.io/docs/cli/config/environment-variables.html
export TF_LOG=trace
export TF_LOG_PATH=./terraform.log

steps:
install tfenv
isntall azure CLI: brew install azure-cli
login into azure
az login
Use AKS-test@detansinnhotmail144.onmicrosoft.com

get the ids:

az ad sp create-for-rbac --skip-assignment. -- if role is already assigned, otherwise, assign role
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/aa5f6563b-b7cd-425b-afcd-f8ac4f7d5829"

This command will output 5 values:
{
  "appId": "00000000-0000-0000-0000-000000000000",
  "displayName": "azure-cli-2017-06-05-10-41-15",
  "name": "http://azure-cli-2017-06-05-10-41-15",
  "password": "0000-0000-0000-0000-000000000000",
  "tenant": "00000000-0000-0000-0000-000000000000"
}

Create storage account to store terraform state:

need to export storage_account_name and ARM_ACCESS_KEY
terraform init -backend-config="storage_account_name=$storage_account_name"
terrafrom validate
terraform plan
terraform apply
