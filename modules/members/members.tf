#----------------------------------------------------------------------------------------------
# header comment
#----------------------------------------------------------------------------------------------
# Add all developers
resource "github_membership" "developers" {
   for_each = toset(var.developer_list) 
   username = each.key
   role = "member"
}

# Add all admins
resource "github_membership" "admins" {
   for_each = toset(var.admin_list) 
   username = each.key
   role = "admin"
}
