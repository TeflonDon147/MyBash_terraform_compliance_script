#! /bin/bash

set -x

export TF_LOG="DEBUG"
export TF_LOG_PATH="./terraform.log"

ENV=prod
TF_PLAN="${ENV}".tfplan

[ -d .terraform ] && rm -r .terraform
rm -rf *.tfplan

sleep 2
terraform fmt -recursive
sleep 2
terraform init
sleep 2
terraform validate
sleep 2
terraform plan -out ${TF_PLAN}
sleep 2
terraform show -json ${TF_PLAN} | jq '.' > ${TF_PLAN}.json
checkov -f prod.tfplan.json
#terraform apply -auto-approve
#terraform destroy -auto-approve
if [ $? -eq 0 ]
then
  echo "success"
  terraform apply -auto-approve
  else
    echo "filed, check your work"
    exit 1
    fi
