locals {
  path = "/path/to/files"
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
  value = local_file.file1.path
}

output "file2" {
  value = local_file.file2.path
}

output "file3" {
  value = local_file.file3.path
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

output "renamed_file1" {
  value = local_file.renamed_file1.path
}

output "renamed_file2" {
  value = local_file.renamed_file2.path
}

output "renamed_file3" {
  value = local_file.renamed_file3.path
}