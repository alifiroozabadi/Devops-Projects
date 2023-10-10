# Dockerized Flask Application with Ansible iptables Setup

## Overview

Welcome to the Dockerized Flask Application with Ansible iptables Setup repository! This repository demonstrates how to containerize a Flask web application with HTTPS support using Docker, and secure the host environment with iptables rules using Ansible.

In this repository, you'll find the following key components:

- **Dockerfile:** The Dockerfile used to build the Docker image for the Flask application.
- **app.py:** The Python script that defines the Flask web application.
- **docker-iptables.yaml:** An Ansible playbook for setting up iptables rules on the host machine.
- **cert.pem and key.pem:** SSL certificate and key files for enabling HTTPS in the Flask application.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

To get started with this repository, follow these steps:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/alifiroozabadi/Devops-Projects.git
   cd Projec1/task2
   ```

2. **Build the Docker Image:**

   Use the provided Dockerfile to build the Docker image for the Flask application. This image will include the application code and SSL certificate files.

   ```bash
   docker build -t flask-app .
   ```

3. **Run the Docker Container:**

   Start a Docker container using the built image. Ensure that you map port 443 to the desired host port for HTTPS access.

   ```bash
   docker run -d -p 443:443 flask-app
   ```

4. **Configure iptables Rules:**

   If needed, execute the Ansible playbook (`docker-iptables.yaml`) on the host machine to set up iptables rules for securing incoming traffic. Make sure Ansible is installed on the host, and customize the playbook as needed.

5. **Access the Flask Application:**

   You can now access the Flask application over HTTPS at `https://yourhost`.

## Prerequisites

Before using this repository, ensure that you have the following prerequisites:

- Docker: Install Docker on your host machine to build and run the Docker container.
- Ansible (if using the iptables playbook): Install Ansible on the host machine where you want to apply iptables rules.
- SSL Certificate and Key: Ensure that you have valid SSL certificate and key files (`cert.pem` and `key.pem`) for enabling HTTPS in the Flask application.

## Usage

This repository serves as a starting point for containerizing Flask applications with Docker and securing the host environment with iptables rules. Customize the Flask application code in `app.py` as needed and adjust the Ansible playbook (`docker-iptables.yaml`) to fit your specific requirements.

## Contributing

We welcome contributions to this repository! If you have improvements, suggestions, or new features to add, please feel free to open issues or submit pull requests. Be sure to follow our [contribution guidelines](CONTRIBUTING.md) when contributing.

## License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

---

Replace the placeholders (e.g., `yourusername/dockerized-flask-app`) with the actual repository information. Customize the content as needed to reflect the purpose and structure of your Dockerized Flask application with Ansible iptables setup repository.
