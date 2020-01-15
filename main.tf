variable "size" {
    type = string
    default = 20
}

# module 2 generates a random numeric string
resource "random_string" "rnd" {
  special = false
  min_numeric = var.size
  length  = var.size
}

output "module2-output" {
    value = "Module2: ${random_string.rnd.result}"
}