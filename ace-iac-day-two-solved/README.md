# ace-iac-day-two

## Please refer [Lab-3](https://community.aviatrix.com/ace-automation-iac-portal-3/lab-3-589)

- Here is an overview of the tasks:
  1. Refer to the infrastructure built in [Lab 1 & Lab 2](https://github.com/574n13y/Terraform/blob/main/ace-iac-day-zero-solved/README.md)
  2. Fork new ACE code for this lab as a remote repository in your own account
  3. Personalize the code for your accounts
  4. Invite Collaborators for the Repository
  5. Create a new GitHub Branch where code changes will be made, and then secure the main branch with Branch Protection Rules
  6. Connect GitHub with Terraform Cloud via an API-driven workflow 

### Dependencies

- Infrastructure built in [Lab 1 & Lab 2](https://github.com/574n13y/Terraform/blob/main/ace-iac-day-zero-solved/README.md)
- GitHub account
- Terraform Cloud account
  ![image](https://github.com/574n13y/Terraform/assets/35293085/978149f9-c1ef-447f-933f-11b56280499c)

- Personalize the code for your accounts -> Edit ace-iac-day-two > backend.tf (https://github.com/<your-account>/ace-iac-day-two/blob/main/backend.tf).
- Edit ace-iac-day-two > .github > CODEOWNERS (https://github.com/<student-account>/ace-iac-day-two/blob/main/.github/CODEOWNERS)
- Invite Collaborators for the Repository -> Remember that you are playing the Network Operator role and will need to invite the DevOps and SecOps personas as Collaborators to your Repository.
  1. Click on Settings > Collaborators > Manage access. Make sure these are the Settings for the Repository, not the Settings for your account.
  2. Click on Invite a collaborator.
  3. Invite your GitHub account that will serve the purpose of the DevOps.
  4. Click on Invite a collaborator again.
  5. Invite your GitHub account that will serve the purpose of SecOps.
  6. Check the email for your respective accounts for DevOps and SecOps and approve the invitations to become a collaborator for your Network Operator Repository.
- Create, Automate, and Secure a Branch -> Create a new branch called updates
- Terraform Cloud -> Set up workspace -> Create a new Workspace. -> Select API-driven workflow. -> Name the workspace ace-iac-day-two and click Create workspace
- Configure Variables -> Navigate to the Variables tab and add these credentials for accessing the Controller as Environment Variables:
  1. AVIATRIX_CONTROLLER_IP
  2. AVIATRIX_USERNAME
  3. AVIATRIX_PASSWORD





  





