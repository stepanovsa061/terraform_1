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
