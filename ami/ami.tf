
# latest own image in current region
data "aws_ami" "aws_linux_image" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.filter]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = self
}