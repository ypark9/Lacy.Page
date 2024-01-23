terraform {
  backend "s3" {
    bucket = "terraform.lacy.page"
    key = "env/prod/terraform.tfstate"
    region = "us-east-1"
  }
}

provider aws {
  region = "us-east-1"
}

module "website" {
  source = "../../modules/website"
  bucket_name = "lacy.page"
  domain_names = ["lacy.page", "www.lacy.page"]
}

output "cloudfront_distribution_id" {
  value = module.website.cloudfront_distribution_id
}
