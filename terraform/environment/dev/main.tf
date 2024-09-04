module "us_east_1" {
  source = "../../app"
  providers = {
    aws = aws.use1
  }
  env_name               = "dev"
  api_gateway_stage_name = "node"
  name_prefix            = "node"
  aws_region             = "us-east-1"
  client_secret_name     = "client_secrets"
  log_level              = "DEBUG"
  client_secret_value = {
    "1" : {
      "client_id" : "1",
      "client_secret" : "client_secret"
      "token_url" : "token_url"
    }
  }
  lambda_image = "122936777114.dkr.ecr.us-east-1.amazonaws.com/fileutils:latest"
  private_subnet_cidrs = ["132.2.1.0/24", "132.2.2.0/24", "132.2.3.0/24"]
  public_subnet_cidrs = ["132.2.4.0/24", "132.2.5.0/24", "132.2.6.0/24"]
  cidr_block   = "132.2.0.0/16"
}