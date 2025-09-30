variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud API key."
  sensitive   = true
}

variable "watsonx_ai_api_key" {
  type        = string
  description = "The API key for IBM watsonx in the target account. If this key is not provided, the IBM Cloud API key will be used instead."
  sensitive   = true
  default     = null
}

variable "container_registry_api_key" {
  type        = string
  description = "The API key of the container registry in the target account. If this key is not provided, the IBM Cloud API key will be used instead."
  sensitive   = true
  default     = null
}

variable "watsonx_project_id" {
  type        = string
  description = "IBM Watsonx project ID."
}

variable "prefix" {
  type        = string
  nullable    = true
  description = "The prefix to be added to all resources name created by this solution."
}
