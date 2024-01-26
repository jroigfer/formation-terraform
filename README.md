# Formación Terraform

Comandos a lanzar.s

## local-file

terraform init

terraform apply

## local-file-count

terraform init

terraform apply

terraform state rm "local_file"."file3"

## local-file-structure

terraform init

terraform workspace new dev

terraform workspace select dev

terraform apply -var-file=dev.tfvars


terraform workspace select pro

terraform apply -var-file=pro.tfvars


terraform destroy -var-file=pro.tfvars


terraform workspace select dev

terraform destroy -var-file=dev.tfvars

## module

terraform init

terraform workspace new dev

terraform workspace select dev

terraform apply -var-file=dev.tfvars
