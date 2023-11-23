# Cleanup

 ![49](https://github.com/574n13y/Terraform/assets/35293085/ce458a93-213c-45eb-b254-3a84d140e815)
 ![50](https://github.com/574n13y/Terraform/assets/35293085/c929cf74-c04f-4b7d-a2ce-e88b60c19a42)
 ![52](https://github.com/574n13y/Terraform/assets/35293085/2142c037-f5d1-4b05-8651-fcf18538fd14)



  - Avoid excess charges by destroying your environment when done. The sequence is as follows:
  - Destroy [Lab-3](https://github.com/574n13y/Terraform/blob/main/ace-iac-day-two-solved/README.md) resources
    1. Visit Terraform Cloud > ace-iac-day-two workspace > Settings menu > Destruction & Deletion > Queue Destroy Plan. Make sure you confirm the plan to proceed with the equivalent of a terraform destroy. This is sufficient for removing the resources created by Lab 3.
    2. When it is complete, you can also delete the Workspace from Terraform Cloud.
       ![51 1](https://github.com/574n13y/Terraform/assets/35293085/a73d371d-6b2e-4a7d-80d4-a2f6cdf6a878)
       ![51 2](https://github.com/574n13y/Terraform/assets/35293085/fb6c9cd1-f2d8-4938-818e-b1c7b832a627)
       ![51 3](https://github.com/574n13y/Terraform/assets/35293085/30817dda-91c6-4a58-807e-c6f6db357f48)
       ![51](https://github.com/574n13y/Terraform/assets/35293085/47229f03-70c9-4c9b-95a5-2d30fd53eb8c)
       
    3. Delete the remote repository for ace-iac-day-two in GitHub. Click on Settings and scroll all the way to the bottom to Danger Zone. Click  Delete this repository.
    4. Type your repository name and click I understand the consequences, delete this repository.
    5. Destroy Lab 1 and Lab 2 resources
          * Recall that Lab 1 and Lab 2 share the same Terraform state in the same Terraform Cloud Workspace. The process of Lab 1 and Lab 2 cleanup is identical to the process for Lab 3.
          * Visit Terraform Cloud > ace-iac-day-zero workspace > Settings menu > Destruction & Deletion > Queue Destroy Plan. Make sure you confirm the plan to proceed with the equivalent of a terraform destroy. This is sufficient for removing your resources created by Lab 1 and Lab 2.
          * Delete the remote repository for ace-iac-day-zero in GitHub. Click on Settings and scroll all the way to the bottom to Danger Zone. Click Delete this repository. 
    7. Destroy Controller and CoPilot from Sandbox Starter Tool
        * Once you are done testing and validating Cloud Networks, you may destroy or delete the entire lab. First, turn off AWS access security on the controller by logging into the controller and clicking on "Settings" in the left-hand nav. Click on "Controller," then "Access Security" in the top tabs. Under "Controller Security Group Management," click "Disable".
        * Note that if you deployed CoPilot, it must be deleted manually by logging into AWS/Azure Console.
   
       


       


