variable "sleep_time" {
  default = 1
}
variable "run_id" {
  default = "run-abc"
  sensitive = true
}

resource "null_resource" "wait" {
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "sleep ${var.sleep_time}"
  }
}
