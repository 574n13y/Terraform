provider "aws" {
  region = "ap-south-1"

  access_key = "ENTER YOUR ACCESS KEY"
  secret_key = "ENTER YOUR SECRET KEY"
}
variable "elb_names" {
    type = list
    default = ["dev-loadbalancer","stage-loadbalancer","trainning-loadbalancer","uat-loadbalancer", "prod-loadbalancer"]
  
}
resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 5 
  path = "/system/"

}
