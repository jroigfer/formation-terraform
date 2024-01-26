resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo '${local.str_test}' > ${local.path}/result4-${var.test}.txt"
  }
}