
# Implementing the Principle of Least Privilege for Cloud Infrastructure Using Terraform

**Author:** Adebisi Olumide  
**Date:** April 27, 2025

---

## 📚 Table of Contents

- [Introduction](#introduction)
- [What is the Principle of Least Privilege?](#what-is-the-principle-of-least-privilege)
- [Problem Definition](#problem-definition)
- [Related Work](#related-work)
- [Project Plan](#project-plan)
- [Division of Work](#division-of-work)
- [Research Progress and Algorithms](#research-progress-and-algorithms)
- [Implementation and Tech Stack Overview](#implementation-and-tech-stack-overview)
- [Implementation Steps](#implementation-steps)
- [IAM Module Deep-Dive](#iam-module-deep-dive)
- [Enforcing Least Privilege](#enforcing-least-privilege)
- [Testing and Validation](#testing-and-validation)
- [Discussion and Comparison](#discussion-and-comparison)
- [Conclusion](#conclusion)
- [References](#references)

---

## 📖 Introduction

This project focuses on implementing the Principle of Least Privilege (PoLP) to manage cloud infrastructure access using Terraform, an Infrastructure as Code (IaC) tool. It aims to enhance cloud security by defining and enforcing access control policies based on job roles and departments rather than direct individual assignments.

---

## 🔒 What is the Principle of Least Privilege?

PoLP ensures users and processes are granted the minimum permissions necessary.

### Core Tenets
- Granularity
- Just-In-Time Access
- Separation of Duties

### Key Benefits
- Reduce attack surface
- Simplify compliance (PCI-DSS, HIPAA, GDPR)
- Improve auditability

### Common Implementation Patterns
- Custom Roles
- Role-Based Access Control (RBAC) or Attribute-Based Access Control (ABAC)
- Policy-as-Code with Terraform

---

## ⚙️ Problem Definition

Manual cloud access management leads to:
- Human errors
- Overprivileged accounts
- Difficulty auditing

Using Terraform automates and enforces PoLP systematically.

---

## 📚 Related Work

- Le & Hoang (2017) - Capability Maturity Model for Cyber Cloud Security
- NIST SP 800-53 and CIS Cloud Benchmarks
- Lack of Terraform-specific implementation guidance in existing literature

---

## 🛠️ Project Plan

Developed following Agile methodology, structured into milestones:
- Milestone 1: Research cloud security and Terraform
- Milestone 2: Build Terraform RBAC model
- Milestone 3: Implement Git-based auditing
- Milestone 4: Testing and refinement
- Milestone 5: Final report and presentation

---

## 🧩 Division of Work

- Research
- Terraform development
- Testing
- Documentation

---

## 🧠 Research Progress and Algorithms

Focus on:
- RBAC and ABAC models
- Terraform-based access control automation
- Git auditing

Selected Papers:
- N. Le & D. Hoang (2017)
- NIST SP 800-53
- CIS Benchmarks

---

## 🖥️ Implementation and Tech Stack Overview

- **Terraform** for infrastructure provisioning
- **Google Cloud Platform** for IAM and resources
- **Visual Studio Code** with Terraform extensions
- **GitHub/GitLab** for version control

---

## 🚀 Implementation Steps

Authenticate Terraform with GCP:
```bash
gcloud auth application-default login
gcloud auth application-default set-quota-project cyber-457119
```

Initialize and apply Terraform:
```bash
terraform init
terraform plan
terraform apply
```

---

## 🛡️ IAM Module Deep-Dive

- Centralizes IAM resources
- Inputs: `project_id`, `service_accounts`
- Custom roles for enforcing PoLP

---

## 🔐 Enforcing Least Privilege

- Start from minimal permissions
- Add only necessary privileges
- Validate policies with:
```bash
terraform validate
terraform plan
```

---

## 🧪 Testing and Validation

- Unit testing Terraform modules
- Integration tests on GCP
- Rollback tests via Git
- Simulated user behavior to validate PoLP

---

## 🆚 Discussion and Comparison

### Manual vs Terraform Automation
- Manual is error-prone and hard to audit
- Terraform is scalable, consistent, auditable

### RBAC vs ABAC
- RBAC selected for simplicity
- Future work: migrate to ABAC for more dynamic access control

---

## 🏁 Conclusion

This project demonstrated the successful implementation of PoLP through Terraform-based automation, resulting in:
- Improved cloud security
- Reduced human errors
- Scalable and auditable access management

Future Enhancements:
- Multi-cloud extension (AWS, Azure)
- ABAC model implementation
- CI/CD integration

---

## 📚 References

- [NIST SP 800-53](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)
- [CIS Cloud Benchmarks](https://www.cisecurity.org/cis-benchmarks/)
- [Terraform by HashiCorp](https://www.terraform.io/)
- [Terraform Git Tutorial](https://developer.hashicorp.com/terraform/tutorials/cli/git-operations)

---
