.PHONY: terraform-init terraform-apply ansible-run

terraform-init:
	cd terraform && terraform init

terraform-apply:
	cd terraform && terraform apply -auto-approve

ansible-run:
	cd ansible && ansible-playbook -i inventory.ini install_devops.yml
