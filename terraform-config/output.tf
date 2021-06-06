output "instance_public_ip" {
  value = aws_instance.my-app-server.public_ip
}

output "instnce_instance_id" {
  value = aws_instance.my-app-server.id
}