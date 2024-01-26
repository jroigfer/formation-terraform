locals {
  path = "${path.root}/result"
}

resource "local_file" "example" {
  count    = 3
  filename = "${local.path}/file${count.index + 1}.txt"
  content  = "Archivo de ejemplo ${count.index + 1}"
}

resource "null_resource" "example" {
  count = 3
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo Archivo ${count.index + 1} creado"
  }
}