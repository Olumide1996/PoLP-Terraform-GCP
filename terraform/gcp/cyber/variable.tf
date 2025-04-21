#This stores the project variables such as project_id and region

variable "project_id" {
    type        = string
    description = "The project ID to deploy resources"
    default     = "cyber-457119"
}

variable "region" {
    type        = string
    description = "The region to deploy resources"
    default     = "us-south1"
}