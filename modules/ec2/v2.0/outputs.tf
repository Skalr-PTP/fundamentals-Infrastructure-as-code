output "public_ip" {
  value = aws_instance.control_vm.*.public_ip
}

