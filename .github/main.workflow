
workflow "on pull request merge, delete the branch" {
  on = "pull_request"

  resolves = ["branch cleanup"]
}

action "branch cleanup" {
  ## Uses defines what we are running, you can point to a repository like below 
  ## OR you can define a docker image.
  uses = "jessfraz/branch-cleanup-action@master"
  
  secrets = ["GITHUB_TOKEN"]
}