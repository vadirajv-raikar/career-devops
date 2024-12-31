provider "aws" {
    region = "us-east-1"

}

resource "aws_instance" "instance-1" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    security_groups = ["vadirajv"]
    key_name = "project"
    user_data = file("terraform/userdata-file.sh")
    tags = {
        Name = "Grafana-Server"
    }
}

resource "aws_instance" "instance-2" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    security_groups = ["vadirajv"]
    key_name = "hare-rama"
    user_data = file()
    tags = {
        Name = "Node-expo"
    }
}
