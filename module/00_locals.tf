locals {
  path = "${path.root}/result"
  str_test = format(
    "%s-%s",
    var.tags["project"],
    var.tags["environment"]
  )
}