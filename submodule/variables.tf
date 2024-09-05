variable "account_id" {
  description = "The account ID where the IAM policies will be created."
}
variable "assume_role" {
  description = "The role ARN to use for the creation of the resources."
}
variable "environment" {
  description = "The environment associated with the AWS account."
}
variable "region" {
  description = "The AWS default region."
}
variable "regions" {
  description = "List of regions for granting permissions."
}
