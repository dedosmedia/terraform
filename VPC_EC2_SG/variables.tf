// Una variable de entrada (dinámica) sin valor por defecto, se solicitará cada
// que se ejecute un apply
variable "host_os" {
  type = string
}

// Una variable con variables por defecto
variable "system" {
  type    = string
  default = "por defecto"
}
