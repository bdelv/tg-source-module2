variable "size" {
  type = string
  default = 20
}

# module 2b generates a random numeric string
resource "random_string" "rnd2b" {
  special = false
  min_numeric = var.size
  length  = var.size
}

output "module2-output" {
    value = "Module2b: ${random_string.rnd2b.result}"
}