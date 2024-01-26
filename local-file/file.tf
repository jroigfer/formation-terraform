locals {
  path = "${path.root}/result"
}

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

output "file1" {
  value = local_file.file1.filename
}

output "file2" {
  value = local_file.file2.filename
}

output "file3" {
  value = local_file.file3.filename
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

output "renamed_file1" {
  value = local_file.renamed_file1.filename
}

output "renamed_file2" {
  value = local_file.renamed_file2.filename
}

output "renamed_file3" {
  value = local_file.renamed_file3.filename
}