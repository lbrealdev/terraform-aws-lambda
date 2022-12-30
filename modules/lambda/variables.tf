# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "create" {
  description = "Controls whether to get data from the AMI resource or not."
  type        = bool
  default     = null
}

variable "function_name" {
  description = "Unique name for your Lambda Function."
  type        = string
  default     = ""
}

variable "handler" {
  description = "Function entrypoint in your code."
  type        = string
  default     = null
}

variable "runtime" {
  description = "Identifier of the function's runtime."
  type        = string
  default     = null
}

variable "filename" {
  description = "Path to the function's deployment package within the local filesystem."
  type        = string
  default     = null
}
