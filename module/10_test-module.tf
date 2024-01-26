module "test-module" {
  source = "./test-module"
  tags = var.tags
  test = var.test
}