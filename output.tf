output "k8s_master_public_ip" {
  value = aws_instance.jenkins.public_ip
}