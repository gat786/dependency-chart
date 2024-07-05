variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "services_to_enable" {
  type    = list(string)
  default = []
}

variable "registry" {
  type = object({
    name        = string,
    description = string,
    format      = string
  })
}
