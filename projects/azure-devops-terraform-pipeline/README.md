# Azure DevOps YAML Pipeline for Terraform

A learning project for a safe, staged Terraform delivery workflow using Azure DevOps YAML.

## Skills demonstrated
- YAML templates and parameters
- Terraform init, fmt, validate, and plan
- Azure service connection and federated identity concepts
- Manual validation / approval gates
- Environment-specific deployments

## Pipeline design
```text
Pull Request
    ↓
Checkout → terraform fmt → validate → lint / security scan
    ↓
Terraform plan → review
    ↓
Approval gate
    ↓
Apply to preprod → verify → approve production → apply
```

## Recommended stages
1. **Validate** — format and validate Terraform.
2. **Security** — run Checkov and TFLint; publish scan results.
3. **Plan** — create a plan for review.
4. **Approval** — require a human decision before deployment.
5. **Deploy** — apply only the reviewed plan with least-privilege credentials.

## Security practices
- Prefer workload identity federation / OIDC over long-lived client secrets where supported.
- Store secrets in a secret manager; never commit credentials.
- Protect production environments with approvals and branch policies.
- Pin task and tool versions and retain logs appropriately.

## Status
Portfolio scaffold and design guide. Add your tested pipeline YAML and execution screenshots as you complete the lab.
