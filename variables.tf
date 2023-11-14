
variable "AWS_ACCESS_KEY"{}
variable "AWS_SECRET_KEY"{}


variable "s3_acl" {
  type = string
  default = "private"
}


variable "env" {
  type = string
  default = "dev"
}

variable "lambda_bucket_name_prefix" {
  type = string
  default = "lambda"
}

variable "s3_bucket_name" {
  type = string
  default = "lambda-functions-bucket"
}


variable "path_source_code" {
  default = "lambda_functions"
}

variable "function_name" {
  default = "PrintHttpHeaders"
}

variable "runtime" {
  default = "python3.8"
}

variable "output_path" {
  description = "Path to function's deployment package into local filesystem. eg: /path/lambda_function.zip"
  default = "lambda_functions.zip"
}

variable "distribution_pkg_folder" {
  description = "Folder name to create distribution files..."
  default = "lambda_dist_pkg"
}

variable "bucket_for_videos" {
  description = "Bucket name for put videos to process..."
  default = "aws-lambda-function-read-videos"
}

variable "bucket_for_images" {
  description = "Bucket name for save images..."
  default = "aws-lambda-function-write-images"
}
