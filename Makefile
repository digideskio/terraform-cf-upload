all: plan apply destroy

plan:
	terraform plan -var-file terraform.tfvars -out terraform.tfplan

apply:
	terraform apply -var-file terraform.tfvars

destroy:
	terraform plan -destroy -var-file terraform.tfvars 	-out terraform.tfplan
	terraform apply terraform.tfplan

clean:
	rm terraform.tfplan
	rm terraform.tfstate
			
