module "website" {
  source         = "git::https://github.com/cloudposse/terraform-aws-s3-website.git?ref=tags/0.8.0"
  namespace      = "dje"
  stage          = "test"
  name           = "example"
  hostname       = "ctscya.davidjeddy.com"
  parent_zone_id = "Z3Q08WINK69BL4"
}