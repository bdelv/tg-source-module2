variable "size" {
  type = string
  default = 20
}

# module 2a generates a random numeric string
resource "random_string" "rnd2a" {
  special = false
  min_numeric = var.size
  length  = var.size
}

output "module2-output" {
    value = "Module2a: ${random_string.rnd2a.result}"
}