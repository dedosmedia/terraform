// Extraerá valores de la infraestructura y los guardará como variables de salida


output "dev_ip" {
  value = aws_instance.mtc_web.public_ip

}
