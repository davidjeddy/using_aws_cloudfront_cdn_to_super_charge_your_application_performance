output "website_dns" {
  value = join("/", ["http:/", module.website.s3_bucket_domain_name, "index.html"])
}