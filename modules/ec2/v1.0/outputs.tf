output "Instance_id" {
    value = aws_instance.monitoring_vm.id
}

output "public_ip" {
    value = aws_instance.monitoring_vm.public_ip
}