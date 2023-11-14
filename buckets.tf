/*
resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.bucket_read_videos.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.aws_lambda_test.arn
    events              = ["s3:ObjectCreated:*"]
    filter_suffix       = ".mp4"
  }
}
*/
/*
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = random_pet.lambda_bucket_name.id

  tags = {
    Name        = random_pet.lambda_bucket_name.id
    Environment = var.env
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.lambda_bucket.id
  acl    = var.s3_acl
}

resource "random_pet" "lambda_bucket_name" {
  prefix = var.lambda_bucket_name_prefix
  length = 4
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_sse" {
  bucket = aws_s3_bucket.lambda_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      #kms_master_key_id = aws_kms_key.mykey.arn
      #sse_algorithm     = "aws:kms"
      sse_algorithm = "AES256"
    }
  }
}
*/
