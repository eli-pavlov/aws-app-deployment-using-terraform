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
    eu-central-1 = "ami-04e601abe3e1a910f"
    eu-west-1 = "ami-0fb2f0b847d44d4f0"
  }
}

variable USERNAME {
  default = "ubuntu"
}

variable PRIV_KEY_PATH {
  default = "vprofilekey"
}

variable PUB_KEY_PATH {
  default = "vprofilekey.pub"
}


variable PRIV_KEY {
  default = "dovekey"
}

variable MYIP {
  default = "0.0.0.0/0"
}

variable rmquser {
  default = "rabbit"
}

variable rmqpass {
  default = "Gr33n@pple123456"
}

variable user {
  default = "admin"
}

variable dbpass {
  default = "admin123"
}

variable dbname {
  default = "accounts"
}

variable instance_count {
  default = "1"
}

variable VPC_NAME {
  default = "vprofile-VPC"
}

variable VpcCIDR {
  default = "172.21.0.0/16"
}

variable PubSub1CIDR {
  default = "172.21.1.0/24"
}

variable PubSub2CIDR {
  default = "172.21.2.0/24"
}

variable PubSub3CIDR {
  default = "172.21.3.0/24"
}

variable PrivSub1CIDR {
  default = "172.21.4.0/24"
}

variable PrivSub2CIDR {
  default = "172.21.5.0/24"
}

variable PrivSub3CIDR {
  default = "172.21.6.0/24"
}
