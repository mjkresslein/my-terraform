data "aws_ami" "eml1_b" {
  most_recent = true

  filter {
    name = "name"
    values = ["02-18-2023-20-33-28_LCMP-EML1-B"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["947132430921"] # Canonical
}

data "aws_instance" "current_eml" {
    # instance_id = "i-0773c885035837daf"
    filter {
        name = "tag:Name"
        values = ["LCMP-EML1-B"]
    }
}
