resource "null_resource" "test" {
  provisioner "remote-exec" {
    inline = [
      "echo '${local.str_test}' > ${local.path}/result4.txt"
    ]
  }
}