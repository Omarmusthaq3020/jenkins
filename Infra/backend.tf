terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-poc"
    storage_account_name = "jenkinsstorageaccounttf"
    container_name       = "tfstate"
    key                  = "jenkins.tfstate"
  }
}
