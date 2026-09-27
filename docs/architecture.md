# 🏗️ Cloud Architecture

Terraform providers allow a common Infrastructure-as-Code workflow across AWS, Azure and GCP while each provider retains native resources. citeturn0search12turn0search16

Separate three concerns:

1. Logical workload requirements.
2. Provider capability mapping.
3. Terraform implementation.

Evaluate choices against workload fit, regional availability, compliance, latency, resilience, skills, operational complexity, cost and vendor dependencies.

A mature architecture can evolve from single-zone to multi-zone, multi-region and, where justified, multi-cloud. Each step increases operational complexity.
