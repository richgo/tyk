# Generated by: tyk-ci/wf-gen
# Generated on: Thu 29 Apr 10:26:32 UTC 2021

# Generation commands:
# ./pr.zsh -title custom goreleaser -branch releng/arm64 -base releng/arm64 -p
# m4 -E -DxREPO=tyk


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk" {
  value = data.terraform_remote_state.integration.outputs.tyk
  description = "ECR creds for tyk repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
