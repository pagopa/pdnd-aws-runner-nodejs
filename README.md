# pdnd-aws-runner-nodejs

Docker image to run github actions on EKS cluster.<br>
The image contains all the tools needed to build and deploy PDND UI and Dataviz projects.

## Setup
Plan:
```shell script
sh ./infra/terraform.sh plan prod
```
Apply:
```
sh ./infra/terraform.sh apply prod
```