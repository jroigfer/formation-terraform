data "http" "download_file_txt" {
  url  = "https://filesamples.com/samples/document/txt/sample1.txt"
}

resource "local_file" "http_output" {
  # Configuración del recurso local_file para guardar el contenido en un archivo
  filename = "${local.path}/${var.name}_sample1.txt"
  content  = data.http.download_file_txt.response_body
}

# Crear un archivo ZIP con el proveedor archive
resource "archive_file" "zip_file" {
  type        = "zip"
  source_file = resource.local_file.http_output.filename
  output_path = "${local.path}/${var.name}_combined_data.zip"
  depends_on = [ resource.local_file.http_output ]
}

# Consumir una API con el proveedor http
data "http" "api_request" {
  url = "https://api.coindesk.com/v1/bpi/currentprice.json"

  request_headers = {
    "Content-Type" = "application/json"
  }
}