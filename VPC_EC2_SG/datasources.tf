// Es como hacer una query al API de AWS para traer información
// que necesitamos en nuestro despliegue
data "aws_ami" "server_ami" {
  most_recent = true

  filter {

    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220606.1-x86_64-gp2*"]

  }

}
