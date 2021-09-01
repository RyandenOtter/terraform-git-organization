# This should contain the modules required for an organzation

# Organization

# Organization Members

module "members" {
  admin_list = var.admin_list
  developer_list = var.developer_list
}
# Organization Repositoires

# Organization Products
module "product" {
  organization_id = var.organization_id
  name = var.name
  repositories = var.repositories
}


# Organization Projects
module "project" {
  name = "test-project"
  product_name = module.project.name
  members = 
}
