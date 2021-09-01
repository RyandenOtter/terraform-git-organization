terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
    token = "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"
    owner = "realistai"
}
