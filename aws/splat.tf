
provider "aws" {
  region     = "ap-south-1"

}
resource "aws_iam_user" "elb" {
  name = "iamuser.${count.index}"
  count = 1
}

output "arns" {
  value = aws_iam_user.elb[*].arn
}