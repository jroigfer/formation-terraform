resource "local_file" "http_output" {
  # Configuración del recurso local_file para guardar el contenido en un archivo
  filename = "${local.path}/module_http_data.txt"
  content  = module.test-module.request_body
}