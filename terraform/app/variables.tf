variable "env_name" {
  description = "environment name"
}
variable "log_retention_in_days" {
  default = 5
}
variable "api_gateway_stage_name" {
  description = "api gateway stage name"
}
variable "public_subnet_cidrs" {
  type = list(string)
  description = "Public Subnet CIDR values"
}
variable "private_subnet_cidrs" {
  type = list(string)
  description = "Private Subnet CIDR values"
}
variable "azs" {
  type = list(string)
  description = "Availability Zones"
  default = ["us-east-1a", "us-east-1b", "us-east-1d"]
}
variable "client_secret_name" {
  type        = string
  description = "client_secret_name"
}
variable "client_secret_value" {
  type = any
  description = "Json string with multiple secrets"
}
variable "aws_region" {
  description = "aws_region"
}
variable "log_level" {
  description = "log_level"
}
variable "name_prefix" {
  description = "name_prefix"
}
variable "lambda_image" {
  description = "lambda_image"
}
variable "cidr_block" {
  description = "cidr_block"
}
locals {
  name_prefix = lower(var.name_prefix)
  env = lower(var.env_name)
  name_suffix = lower(var.env_name)
  lambda_image = var.lambda_image
}