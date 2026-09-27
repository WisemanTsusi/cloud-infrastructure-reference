# ☁️ Cloud Infrastructure Reference

> Provider-neutral Infrastructure-as-Code reference implementation for AWS, Microsoft Azure and Google Cloud Platform (GCP) using Terraform.

[![CI](https://img.shields.io/github/actions/workflow/status/WisemanTsusi/cloud-infrastructure-reference/ci.yml?branch=main&label=CI&logo=githubactions&logoColor=white)](https://github.com/WisemanTsusi/cloud-infrastructure-reference/actions/workflows/ci.yml)
[![Terraform](https://img.shields.io/badge/Terraform-1.9%2B-844FBA?logo=terraform&logoColor=white)](https://developer.hashicorp.com/terraform)
[![AWS](https://img.shields.io/badge/AWS-IaC-232F3E?logo=amazonwebservices&logoColor=white)](https://aws.amazon.com/)
[![Azure](https://img.shields.io/badge/Azure-IaC-0078D4?logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)
[![GCP](https://img.shields.io/badge/GCP-IaC-4285F4?logo=googlecloud&logoColor=white)](https://cloud.google.com/)
[![License](https://img.shields.io/badge/license-MIT-1f6feb?logo=opensourceinitiative&logoColor=white)](LICENSE)

## 🎯 Purpose

Demonstrates practical cloud architecture and Infrastructure-as-Code skills without exposing proprietary application IP.

Terraform provides a declarative, version-controlled workflow and supports multiple cloud providers through providers and reusable modules. citeturn0search13turn0search12

## 🏗️ Reference architecture

```text
Internet
   │
   ▼
DNS / Edge / CDN
   │
   ▼
Load Balancer
   │
   ├───────────────┐
   ▼               ▼
API / App        Async Workers
   │               │
   └───────┬───────┘
           ▼
      Data / Storage
           │
     Observability
     + Security
```

## ☁️ Provider mapping

| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Network | VPC | Virtual Network | VPC |
| Compute | ECS/Fargate or EKS | Container Apps / AKS | Cloud Run / GKE |
| Load balancing | ALB | Application Gateway / Front Door | Cloud Load Balancing |
| Object storage | S3 | Blob Storage | Cloud Storage |
| Relational database | RDS | Azure Database | Cloud SQL |
| Secrets | Secrets Manager | Key Vault | Secret Manager |
| Observability | CloudWatch | Azure Monitor | Cloud Monitoring |
| IAM | IAM | Entra ID / RBAC | IAM |
| DNS | Route 53 | Azure DNS | Cloud DNS |

This is a capability mapping, not a claim that the services are interchangeable.

## 📁 Structure

```text
cloud-infrastructure-reference/
├── .github/workflows/ci.yml
├── terraform/
│   ├── aws/
│   ├── azure/
│   └── gcp/
├── docs/
│   ├── architecture.md
│   ├── security.md
│   └── cost-and-reliability.md
├── .gitignore
├── LICENSE
└── README.md
```

## 🧱 IaC practices

- Explicit provider versions
- Variables and outputs
- Provider-specific implementations
- Formatting and validation in CI
- No credentials in source
- State-management guidance
- Environment separation guidance
- Security and cost considerations

## 🔐 Security

Production deployments should use federated or short-lived credentials, workload identity, secrets managers, private networking where appropriate, encryption, least-privilege IAM/RBAC, centralized audit logs and policy-as-code.

AWS Well-Architected guidance treats security, reliability, performance efficiency, cost optimization, operational excellence and sustainability as architectural considerations. citeturn0search0turn0search2

## 💰 Cost & reliability

Cloud architecture involves trade-offs. Reliability and cost should be modeled against actual workload requirements rather than assumed from the provider alone. citeturn0search9turn0search6

For SaaS workloads:

```text
Cloud Cost
÷ Tenants
÷ Active Users
÷ Transactions
= Unit Cost
```

Then incorporate redundancy, commitments, storage, transfer, observability, backup/DR and AI inference.

## 🚀 Validation

Run from each Terraform directory:

```bash
terraform init -backend=false
terraform fmt -check
terraform validate
terraform plan
```

CI validates configuration without provisioning cloud resources.

## ⚠️ Disclaimer

These are portfolio/reference configurations, not production deployment manifests. Review IAM, networking, state, encryption, compliance, quotas, pricing and regional requirements before use.

## 🧭 Roadmap

- [ ] Remote state examples
- [ ] Environment overlays
- [ ] Terraform tests
- [ ] OPA/Conftest policies
- [ ] Security scanning
- [ ] Kubernetes examples
- [ ] GitOps
- [ ] DR runbooks
- [ ] FinOps model
- [ ] OpenTelemetry

## 📄 License

MIT
