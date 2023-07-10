variable REGION {
  default = "eu-central-1"
}

variable BUCKET {
  default = "terra-vprofile-state"
}

variable ZONE1 {
  type = string
  default = "eu-central-1a"
}

variable ZONE2 {
  type = string
  default = "eu-central-1b"
}

variable ZONE3 {
  type = string
  default = "eu-central-1c"
}

variable AMIS {
  type = map
  default = {
    eu-central-1 = "ami-07ce6ac5ac8a0ee6f"
    eu-west-1 = "ami-0fb2f0b847d44d4f0"
  }
}

variable USER {
  default = "ec2-user"
}

variable PUB_KEY {
  default = "dovekey.pub"
}

variable PRIV_KEY {
  default = "dovekey"
}

variable MYIP {
  default = "183.83.67.89/32"
}
