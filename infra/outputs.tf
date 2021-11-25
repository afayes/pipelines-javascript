output "instance_id" {
  description = "ID of the EC2 instance"
  value       = {for key, server in aws_instance.app_server : key => server.id }
}
#
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = {for key, server in aws_instance.app_server : key => server.public_ip }

}
