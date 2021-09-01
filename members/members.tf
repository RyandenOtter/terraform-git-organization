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

# Create the developer team
resource "github_team" "developer_team" {
  name        = "Dev Team"
  description = "The Dev Team"
}

# Add all admins and developers to the developer team
resource "github_team_membership" "developer_team_membership" {
  team_id  = github_team.developer_team.id
  for_each = toset(concat(var.developer_list, var.admin_list))
  username = each.key
  role     = "member"
}
