module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "nusaybah0412+sanbox@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "nusaybah0412+sanbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}



module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "nusaybah0412+network@gmail.com"
    AccountName               = "network-aft"

    # Syntax for top-level OU
    ManagedOrganizationalUnit = "SharedServicesOU"

     # Syntax for nested OU
    # ManagedOrganizationalUnit = "SharedServiceProdOU (ou-izmt-3bs55zyy)"

    SSOUserEmail              = "nusaybah0412+network@gmail.com"
    SSOUserFirstName          = "Network"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Name" = "Nubi"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "network"
}



module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "nusaybah0412+sanbox12@gmail.com"
    AccountName               = "sandbox-aft12"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "nusaybah0412+sanbox12@gmail.com"
    SSOUserFirstName          = "Sandbox12"
    SSOUserLastName           = "AFT12"
  }

  account_tags = {
    "Learn Tutorial" = "AFT12"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox12"
}

