# Terraform Azure Infrastructure Lab

A hands-on Infrastructure as Code project demonstrating reusable Terraform patterns for Azure.

## Skills demonstrated
- Terraform providers, variables, outputs, and modules
- Azure Resource Group and Storage Account provisioning
- Remote state concepts and environment-specific configuration
- Formatting, validation, and change review

## Suggested structure
```text
terraform-azure-infrastructure/
├── bootstrap/
├── environments/
│   ├── preprod/
│   └── prod/
└── modules/
    ├── resource_group/
    └── storage_account/
```

## Workflow
1. Configure Azure authentication securely.
2. Run `terraform fmt -check`.
3. Run `terraform init` and `terraform validate`.
4. Review `terraform plan` before applying.
5. Keep state in a secured remote backend; never commit state files or secrets.

## Safety
This is a learning lab scaffold. Add and test your Terraform implementation before describing it as deployed. Use least-privilege access, budget limits, and cleanup resources when finished.

## Next improvements
- Add VNet and subnet modules
- Add preprod/prod tfvars without secrets
- Add automated linting and IaC security checks
