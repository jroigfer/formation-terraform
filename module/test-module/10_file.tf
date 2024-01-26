resource "local_file" "file1" {
  content = "Contenido del archivo 1"
  filename = "${local.path}/file1-${var.test}"
}

resource "local_file" "file2" {
  content = "Contenido del archivo 2"
  filename = "${local.path}/file2-${var.test}"
}

resource "local_file" "file3" {
  content = "Contenido del archivo 3"
  filename = "${local.path}/file3-${var.test}"
}

resource "local_file" "renamed_file1" {
  content = "Contenido del archivo renombrado 1"
  filename = "${local_file.file1.filename}.renamed"
}

resource "local_file" "renamed_file2" {
  content = "Contenido del archivo renombrado 2"
  filename = "${local_file.file2.filename}.renamed"
}

resource "local_file" "renamed_file3" {
  content = "Contenido del archivo renombrado 3"
  filename = "${local_file.file3.filename}.renamed"
}