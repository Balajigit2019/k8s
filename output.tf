output "k8s_master_public_ip" {
  value = aws_instance.jenkins.public_ip
}
output "public_subnet_id" {
  value = aws_subnet.pub_sub.id
}
output "aws_security_group_default" {
  value = aws_default_security_group.default.id
}  
output "vpc_id" {
  value = aws_vpc.vpc.id
}  
