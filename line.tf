module "line" {
  source                       = "./modules/repository"
  name                         = "line"
  description                  = "Development repository for the line cookbook"
  homepage_url                 = "https://supermarket.chef.io/cookbooks/line"
  cookbook_team                = github_team.line.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "line" {
  name        = "line"
  description = "Line Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "line-maintainer-1" {
  team_id  = github_team.line.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "line-maintainer-3" {
  team_id  = github_team.line.id
  username = "MarkGibbons"
  role     = "maintainer"
}

