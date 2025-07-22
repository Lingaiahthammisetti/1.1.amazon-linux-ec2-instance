resource "aws_instance" "amazon_linux_ec2" {
    ami           = data.aws_ami.amazon_linux_info.id
    instance_type = var.ec2_instance.instance_type
    vpc_security_group_ids = [var.allow_everything]
    root_block_device {
        encrypted             = false
        volume_type           = "gp3"
        volume_size           = 30
        iops                  = 3000
        throughput            = 125
        delete_on_termination = true
    }
    tags = {
        Name = "amazon_linux_ec2_server"
    }
}
resource "aws_route53_record" "amazon_linux_ec2_r53" {
    zone_id = var.zone_id
    name    = "amazon_linux.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.amazon_linux_ec2.public_ip]
    allow_overwrite = true
}


