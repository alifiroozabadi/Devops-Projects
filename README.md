# DevOps Projects Repository

This repository contains two main tasks for DevOps and infrastructure management: 

1. Infrastructure Provisioning with Terraform.
2. Configuring iptables, Dockerizing a Flask Application, and other tasks with Ansible.

These tasks are designed to help you automate the setup and management of infrastructure and services.

## Task 1: Infrastructure Provisioning with Terraform

- **Task Directory:** [task1](./task1)
- **Description:** This task uses Terraform to provision infrastructure, create virtual machines, and configure the VMware environment. The `main.tf` and `variables.tf` files define the infrastructure, while the GitHub Actions workflow automates the deployment using a self-hosted runner.

### GitHub Actions Workflow

- The `main.yml` GitHub Actions workflow in the [.github/workflows](./.github/workflows) directory is responsible for running Terraform to create the infrastructure.

## Task 2: Configuring iptables, Dockerizing a Flask Application, and More with Ansible

- **Task Directory:** [task2](./task2)
- **Description:** This task focuses on configuring iptables, installing Docker, and Dockerizing a Flask application using Ansible playbooks. The [docker-iptables.yaml](./task2/docker-iptables.yaml) playbook and other files in this directory automate the setup and deployment.

### GitHub Actions Workflow

- The `main.yml` GitHub Actions workflow in the [.github/workflows](./.github/workflows) directory is responsible for running Ansible playbooks to configure iptables, install Docker, and deploy the Flask application.

## How to Use

1. **Fork the Repository:** Start by forking this repository to your GitHub account.

2. **Set Repository Secrets:**
   - For Task 2, you need to set a GitHub repository secret to store the `ANSIBLE_BECOME_PASSWORD`. This password is used for privilege escalation in Ansible tasks. Refer to the [GitHub Docs](https://docs.github.com/en/actions/reference/encrypted-secrets) for setting up secrets.

3. **Customize and Execute:**
   - Task 1: Customize the Terraform configuration in [task1](./task1) to match your infrastructure requirements.
   - Task 2: Customize the Ansible playbooks and variables in [task2](./task2) if needed.
   - Push changes to your forked repository to trigger the GitHub Actions workflows.

## Contributing

If you have improvements, bug fixes, or new tasks to add, feel free to open a pull request. We welcome contributions from the community!

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
