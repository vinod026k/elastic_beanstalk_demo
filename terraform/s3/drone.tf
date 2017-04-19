# Is drone the best name for this? This is where drone will put all its output and where codepipline will slurp in data...

resource "aws_s3_bucket" "drone" {
  bucket = "drone-${data.aws_region.current.name}-${data.aws_caller_identity.current.account_id}"
  acl    = "private"

  versioning {
    enabled = true
  }

  force_destroy = true
}