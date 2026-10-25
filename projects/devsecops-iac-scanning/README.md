# DevSecOps Checks for Terraform

A practical lab plan for adding security and quality checks to Infrastructure as Code before deployment.

## Tools to practice
- **Checkov** — infrastructure policy checks
- **TFLint** — Terraform linting
- **Semgrep** — static analysis rules
- **Gitleaks** — secret detection
- **tfsec** — Terraform security scanning (check current maintenance/recommendations before adopting)

## Example local workflow
```bash
terraform fmt -check -recursive
terraform init -backend=false
terraform validate
tflint --recursive
checkov -d .
gitleaks detect --source . --redact
```

Run tools according to their current installation and configuration documentation. Some checks may require plugins, provider downloads, or project-specific config.

## CI pipeline order
1. Checkout source
2. Format and validate
3. Lint Terraform
4. Scan IaC and secrets
5. Publish readable reports
6. Fail the pipeline for configured blocking findings
7. Generate a plan only when required checks pass

## Learning goals
- Understand false positives and policy tuning
- Separate warning-level findings from release blockers
- Never print secrets into logs
- Document findings, fixes, and re-scan evidence

## Status
Learning scaffold. Add sample Terraform, tool configuration, and sanitized scan results as you implement it. Do not include real credentials or sensitive infrastructure details.
