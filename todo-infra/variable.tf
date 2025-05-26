variable "rgs" {
  description = "The name of the resource group where the resources will be created."
  type        = map(object({
    name = string
    location = string
  }))
}

