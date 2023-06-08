// Terraform vpc module

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.2"

  # vpc details

  name = "my-own-vpc"
  cidr = "10.0.0.0/20"

  azs             = ["ap-south-1a", "ap-south-1b"]
  private_subnets = ["10.0.0.0/23", "10.0.2.0/23"]
  public_subnets  = ["10.0.4.0/23", "10.0.6.0/23"]

  # Date Base 
  create_database_subnet_group       = true // default is true.
  create_database_subnet_route_table = true // default is false.
  database_subnets                   = ["10.0.8.0/23", "10.0.10.0/23"]

  # NAT Gateway
  enable_nat_gateway = true  // default is false. 
  single_nat_gateway = false // default is false. i want to have high availability of nat gateway.

  enable_dns_hostnames = true // default is true
  enable_dns_support   = true // default is true

  # tags

  public_subnet_tags = {
    Name = "public-subnet"
  }

  private_subnet_tags = {
    Name = "private-subnet"
  }

  database_subnet_tags = {
    Name = "Database-subnet"
  }

  vpc_tags = {
    Name = "my-own-vpc"
  }






}

