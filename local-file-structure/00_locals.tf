locals {
  path = "${path.root}"
  str_test = format("s%-s%",var.tags["environmemt"],var.tags["project"])
}