###cloud vars


variable "token" {
  type        = string
}

variable "cloud_id" {
  type        = string
  default     = "b1gr9jc87b7932t58r8n"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gd4iu9i673fhlkf5lf"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_name" {
  type        = string
  default = "vpc_clopro"
}

variable "sab_vpc_name" {
  type        = string
  default = "public"
}

variable "public_cidr" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
}

variable "private_sab_vpc_name" {
  type        = string
  default = "private"
}

variable "private_cidr" {
  type        = list(string)
  default     = ["192.168.20.0/24"]
}
