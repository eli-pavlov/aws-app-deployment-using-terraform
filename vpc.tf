module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = var.VPC_NAME
    cidr = var.VpcCIDR
    azs             = [var.ZONE1, var.ZONE2, var.ZONE3]



    enable_dns_hostnames = true
    enable_dns_support   = true
}