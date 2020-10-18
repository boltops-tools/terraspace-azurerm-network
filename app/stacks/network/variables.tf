variable "location" {
  description = "The Azure location or region to deploy the network to"
  default = "<%= AzureInfo.location %>"
}

variable "address_space" {
  description = "Network IP range space"
  default = "10.10.0.0/16"
  type = string
}

variable "subnet_prefixes" {
  description = "Subnet prefixes"
  default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  type = list(string)
}

variable "subnet_names" {
  description = "The Azure location or region to deploy the network to"
  default = ["subnet1", "subnet2", "subnet3"]
  type = list(string)
}
