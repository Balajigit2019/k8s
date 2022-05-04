output "k8s_master_public_ip" {
  value = aws_instance.jenkins.public_ip
}
output "public_subnet_id" {
  value = aws_subnet.pub_sub.id
}
output "aws_security_group" {
  value = aws_security_group.sg.id
}  
