module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr


  azs                  = ["${var.aws_region}a", "${var.aws_region}b"]
  public_subnets = [
    cidrsubnet(var.vpc_cidr, 8, 0),
    cidrsubnet(var.vpc_cidr, 8, 1)
  ]

  private_subnets = [
    cidrsubnet(var.vpc_cidr, 8, 2),
    cidrsubnet(var.vpc_cidr, 8, 3)
  ]
  
  private_subnet_suffix = "private"
  public_subnet_suffix  = "public"

  enable_nat_gateway = true
  enable_vpn_gateway = true
  single_nat_gateway = true

  tags = merge(
    local.common_tags
  )
}