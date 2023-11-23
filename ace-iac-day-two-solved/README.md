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

- Connect GitHub Repo and Terraform Cloud via API using Token
- Collaboration with other stakeholders -> Work done by DevOps team -> Click on the app-fqdn-rules.tf file in the updates branch(not in the main branch) to request access to a new FQDN.
- ace-iac-day-two > .github > workflows > terraform.yml, but it is beyond the scope of this training to go into the configuration and syntax of this file.
- Next, click Commit changes:
  ![31](https://github.com/574n13y/Terraform/assets/35293085/5640888b-cfef-4163-89d4-73f7d5dfa0fc)
  ![32](https://github.com/574n13y/Terraform/assets/35293085/822aad88-81c8-4ed7-93d9-21f06ca8dfaa)
  ![33](https://github.com/574n13y/Terraform/assets/35293085/5982d694-a621-4061-aee2-53ae425e7e61)
  ![34](https://github.com/574n13y/Terraform/assets/35293085/8cf17f06-359c-4a93-a39f-039fe5c96e08)
  ![35](https://github.com/574n13y/Terraform/assets/35293085/bfd65cdd-4fa2-42cf-a6d6-a3e87047206e)

- Work done by SecOps team -> Now we can navigate to the browser window where you are logged on in GitHub as the SecOps team to approve the PR. -> Navigate to Pull requests > Review requests and click on the request.
- Click Add your review. -> Click Review changes one more time. If you are okay with the changes, click the Approve button and the Submit review. -> Once the SecOps team has Approved the PR, it will look like this:
  ![36](https://github.com/574n13y/Terraform/assets/35293085/a2ab2575-74d7-41ca-8e40-95626f9cb2a3)
  ![37](https://github.com/574n13y/Terraform/assets/35293085/b9500b8f-3eb1-4f15-812b-3abee45e74e4)
  ![38](https://github.com/574n13y/Terraform/assets/35293085/6d2f59c0-a5a1-4aa9-a08f-d2a3bdd7ba2e)
  ![39](https://github.com/574n13y/Terraform/assets/35293085/e7ea1e93-07f2-4e61-b976-c70e655f3cbb)

- GitHub Actions will trigger a Deployment (CD part of Continuous Deployment), which is a Terraform apply and the Network Team can monitor the progress of the apply on Terraform Cloud.
- At any time in this workflow, you can see the status of the GitHub Actions by clicking on Actions in GitHub.
- On the Controller, you should now see the new rule in your Egress FQDN filter.
  ![40](https://github.com/574n13y/Terraform/assets/35293085/a7be5854-4bf2-4dc3-b8de-2e8cd18e4dea)
  ![41](https://github.com/574n13y/Terraform/assets/35293085/23f74520-5636-4612-9600-198cce280f70)
  ![42](https://github.com/574n13y/Terraform/assets/35293085/2df893d2-0076-4e43-97a3-212d0bdd7809)
  ![43](https://github.com/574n13y/Terraform/assets/35293085/4b55fd34-0f3c-4bc9-90e2-2ff5763304bb)
  ![44 0](https://github.com/574n13y/Terraform/assets/35293085/849eb6e6-0585-4b98-a7fe-c618b0cb5e3b)
  ![44](https://github.com/574n13y/Terraform/assets/35293085/12ec7903-be50-4967-94f7-ded663c55e2a)

- Let's test the connectivity from BU1 to BU2
  ![45](https://github.com/574n13y/Terraform/assets/35293085/d586cb2b-4eaf-4037-a51e-8f7d1c5a9c6c)
  ![46](https://github.com/574n13y/Terraform/assets/35293085/87bbf72b-890e-4914-af16-bf2838a3b388)

- Copilot
  ![47](https://github.com/574n13y/Terraform/assets/35293085/279aa9c1-b419-46e1-bf60-9bf3bd4ed76e)
  ![48](https://github.com/574n13y/Terraform/assets/35293085/55789fc2-befa-4510-bc6f-605c59299d64)

            *** We did it ***

- Next Step -> [Cleanup](https://github.com/574n13y/Terraform/tree/main/Cleanup)
   

  





  





