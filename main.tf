provider "aws" {
  region = "eu-north-1"
}

resource "aws_ami_from_instance" "ami_example" {
  name               = "github-actions-ami"
  source_instance_id = "i-0390b7187e5f3c4ae"

  snapshot_without_reboot = true

  tags = {
    Name = "AMI-Created-by-GitHub-Actions"
  }
}
