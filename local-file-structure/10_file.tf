resource "local_file" "file1" {
  content = "Contenido del archivo 1"
  filename = "${local.path}/file1"
}

resource "local_file" "file2" {
  content = "Contenido del archivo 2"
  filename = "${local.path}/file2"
}

resource "local_file" "file3" {
  content = "Contenido del archivo 3"
  filename = "${local.path}/file3"
}

resource "local_file" "renamed_file1" {
  content = "Contenido del archivo renombrado 1"
  filename = "${local_file.file1.path}.renamed"
}

resource "local_file" "renamed_file2" {
  content = "Contenido del archivo renombrado 2"
  filename = "${local_file.file2.path}.renamed"
}

resource "local_file" "renamed_file3" {
  content = "Contenido del archivo renombrado 3"
  filename = "${local_file.file3.path}.renamed"
}