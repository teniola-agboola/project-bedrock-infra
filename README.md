Retail Store Sample App

Overview

This project deploys a sample retail store application using Terraform, Helm, and Kubernetes (EKS) on AWS. It includes microservices for:
	•	UI – Frontend web application
	•	Carts – Shopping cart service
	•	Catalog – Product catalog service
	•	Orders – Orders service
	•	Checkout – Checkout service

Supporting infrastructure includes:
	•	Amazon EKS Cluster
	•	RDS / MySQL for persistent storage
	•	Redis for caching
	•	DynamoDB and RabbitMQ for message handling

The deployment is fully automated via Helmfile and optionally integrates with GitHub Actions for CI/CD.
