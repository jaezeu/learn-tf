module "custom_module" {
  source = "../modules"

  resource_prefix = "dev"
  create_dynamodb = true
}