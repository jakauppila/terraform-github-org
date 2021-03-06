module "fastly" {
  source                       = "./modules/repository"
  name                         = "fastly"
  cookbook_team                = github_team.fastly.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "fastly" {
  name        = "fastly"
  description = "fastly Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "fastly-maintainer-1" {
  team_id  = github_team.fastly.id
  username = "ramereth"
  role     = "maintainer"
}
