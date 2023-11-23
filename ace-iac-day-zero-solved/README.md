# ace-iac-day-zero (Lab 1 and Lab 2)

## Please refer [lab1](https://community.aviatrix.com/ace-automation-iac-portal-3/lab-1-587?tid=587&fid=3)
  - Here is an overview of the tasks in this lab:
    1. Deploy Aviatrix Controller from Sandbox Starter Tool
    2. Gather Azure API credentials & AWS credentials
    3. Connect GitHub with Terraform Cloud
    4. Adopt a VCS-driven workflow
    5. Deploy the following infrastructure from scratch for ACE Inc.
       ![image](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/fae28833-4d08-4fa1-a0da-a506cde000c2)
    
  - Sandbox Starter Tool
    Before you Begin
     1. You must have an AWS Access Key ID and Secret Access Key
     2. Create EC2 Key Pair name for AWS Ohio and N. Virginia regions
     3. Subscribe to the Aviatrix Secure Networking Platform Metered 2208-Universal 24x7 Support product from the AWS Marketplace.
     4. Subscribe to Aviatrix Controller Image
     5. Subscribe to the Aviatrix CoPilot product from the AWS Marketplace.
    ![0](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/3079b2c4-4593-46b8-8cc2-2947bc7dea93)

     6. Launch Instance
    ![1](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/f8242920-5e4f-4e1f-a0ff-0a224f154ea4)

     7. Once the instance "Running", browse to https://<Public IPv4 address>
         The tool uses a self-signed certificate
         Accept the warning and proceed
         If using Chrome and you get a connection error message, you can bypass that by clicking anywhere and typing this is unsafe
         You should see the "Aviatrix Sandbox Starter" user interface (UI) now.
    ![2](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/4467c5b4-f6ff-4ba4-af90-389345fa87ad)

     8. Provide AWS Credentials
    ![3](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/f6deccb5-5359-409d-83b7-3e0e9b5e1bee)

     9. Launch the Controller in AWS
    ![4](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/578eb624-0fe1-4df8-8429-c2682c44ac0d)
    ![5](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/fc059dea-4a09-4764-b1dc-94aa25348baa)

     10. Open a Setup Controller IP in the browser
    ![6](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/29d75c79-f0fb-4cde-bee6-56da18b8f651)

     11. The user name is admin and the password is the one you selected earlier in the process.
    ![7](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/68a71310-3a59-4329-9aa1-1a5e4ff5b814)

     12. Launch CoPilot
    ![8](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/94e98be5-b1d8-4d2a-9b91-50d4759c8b07)

     13. credentials are the same as what we have used in the Controller
    ![9](https://github.com/574n13y/ace-iac-day-zero/assets/35293085/d920b448-c670-471c-9a44-7e2d918facec)

  - AWS - Key pair
    ```
    On the EC2 dashboard select Key Pair
    Now create a new Key Pair and call it ohio-kp as shown in the diagram below. Spaces are not allowed in the Key Pair name
    ***For Linux/MAC use .pem format***
    ***For Windows use .ppk***
    ```
  - Azure API Keys
     ```
     Get-AZSubscription
     az ad sp create-for-rbac --name "<application name>" --role="contributor" --scopes=/subscriptions/<subscriptions-id>
     ```

 - Terraform Cloud
   1. Set up workspace -> Create a new Workspace -> Select Version control workflow.
   2. Authorize Terraform Cloud to verify your GitHub identity. If you do not see this message, disable your browser AdBlocker as it is a pop-up dialog.
   3. Install Terraform Cloud on your GitHub account. Keep the default of All repositories
   4. Choose the ace-iac-day-zero repository
   5. Configure Variables -> Here you will configure Terraform Variables and Environment Variables.
   6. Then create/configure these five (5) Terraform Variables as follows with sensitive values for the passwords:
      
    ```
     controller_ip = <Public IP address of your Controller>
     username = admin
     password = <admin password you assigned to your Controller>
     aws_account_name = aws-account if your Controller is deployed via Sandbox Starter Tool; OR if you already have a Controller some other way, it is the name your AWS account appears onboarded to the Controller
     ace_password. Whatever you set it to, please note it down. You will use this to SSH to the workloads.
    ```
    7. Then add these six (6) Environment Variables for the AWS and Azure CSP Security Credentials with sensitive values for all of them:
       
    ```
    AWS_ACCESS_KEY_ID = AWS Access Key ID that you used to deploy SST
    AWS_SECRET_ACCESS_KEY = AWS Secret Access Key that you used to deploy SST
    TF_VAR_azure_subscription_id = Azure Subscription ID. 
    TF_VAR_azure_tenant_id = Tenant ID. This is also known as Directory ID.
    TF_VAR_azure_client_id = Application ID. This is also known as Client ID. 
    TF_VAR_azure_client_secret = Application Key. This is also known as Client Secret.
    ```
    ![14](https://github.com/574n13y/Terraform/assets/35293085/a44b2db8-01be-4748-83b4-b04b367b1326)

    8. Terraform plan and terraform apply -> Move to the Overview tab and perform a terraform plan by from the Actions menu on the right side.
    9. On the next page, you will see the output of the terraform plan and what resources will be built (the number of resources may vary from the screenshot).
    ![15](https://github.com/574n13y/Terraform/assets/35293085/3f0c699b-aafa-4d9e-b344-84cea96007fe)

    11. Click Confirm & Apply and provide any notes. This will issue the equivalent of terraform apply. Observe the progress of the resources being created by Terraform.
    ![16](https://github.com/574n13y/Terraform/assets/35293085/801111c9-6d86-4c1f-a00a-e79339594154)
    ![10](https://github.com/574n13y/Terraform/assets/35293085/bef1352d-28a0-428c-b8c1-d7d800297ad3)

    12. At the bottom, you will see output generated from the code at the bottom of the aws.tf and azure.tf files that will look like this:
    13. These are the Public and Private IPs of the Bastion host in BU1 (aka Spoke 1) as well as the Private IP of the App host in BU2 (aka Spoke 2).
    ![10 1](https://github.com/574n13y/Terraform/assets/35293085/b7b220c9-c8c8-4ca0-9f9a-95aca2dc6b29)

    14. At this point, you should be able to SSH to the BU1 Bastion as Ubuntu and whatever password you set the password variable to above, but from there you won't be able to SSH to the BU2 App. The reason for that is BU1 and BU2 are not yet connected. Verify from the Controller:
    ![19](https://github.com/574n13y/Terraform/assets/35293085/38e6e914-26b5-460d-ba88-3a4c1706b60a)
    ![20](https://github.com/574n13y/Terraform/assets/35293085/819b84f1-e638-4841-a5c0-9bd5f6256650)
    ![17](https://github.com/574n13y/Terraform/assets/35293085/22419105-69ea-4f46-80cc-dbcbff1b4000)


## Please refer [lab2](https://community.aviatrix.com/ace-automation-iac-portal-3/lab-2-588)
   - In Lab2 we will configure a network domain Connection Policy via Terraform.
   - Here is an overview of the tasks:
     1. Code modification
     2. View changes in the Controller UI
        
  - Code Modification --> It is recommended to use a localized setup with an IDE that integrates with your GitHub account. However, you can also make the code changes directly on the GitHub.com UI.
  - Resize gateways --> ACE Inc is growing now and needs to resize their gateways. The AWS Transit and Spoke Gateways are currently t2.micro. Verify this on the Controller > GATEWAY
    ![21 0](https://github.com/574n13y/Terraform/assets/35293085/625d8185-a5b8-400a-983c-08c237299593)
    
  - ACE needs to resize their AWS gateways from t2.micro to t3.micro. --> Make this change by editing variables.tf file --> On GitHub.com cloud UI, click the Pencil icon to edit directly.
  - Make the change for the Transit Gateway on line 19 & 35. --> Provide a meaningful commit message at the bottom and click the Commit changes button.
    ![21](https://github.com/574n13y/Terraform/assets/35293085/b318743c-ae4e-4e95-8fb9-6e47896a9be9)

  - Once we commit the changes to a file, it will automatically queue a Terraform Plan. Back in Terraform Cloud, navigate to the Overview tab of your workspace. Depending on how soon you navigate there, you will see blue Planning or yellow Planned in the Latest Run pane. From there, click on See details to see the planned run with proposed changes such as this:
    ![22](https://github.com/574n13y/Terraform/assets/35293085/f199aa0a-db10-4305-b4d9-758b47c9e998)

 - Click Confirm & Apply to see the progress of the Terraform apply. When it is complete, both gateways in AWS will be t3.micro size.
   ![23](https://github.com/574n13y/Terraform/assets/35293085/1d26eb0e-c396-49d6-97ca-e0d2cbd23d00)
   ![24](https://github.com/574n13y/Terraform/assets/35293085/10acac0b-ae6c-4a43-9b8a-0d52ba78b1e4)

 - Configure a Connection Policy --> Connect BU1 to BU2 by uncommenting this block of code at the bottom of main.tf
   ![25 0](https://github.com/574n13y/Terraform/assets/35293085/2f6fa63e-4a79-413b-b6e8-480b8448f48f)
   ![25](https://github.com/574n13y/Terraform/assets/35293085/6ebce91a-47d1-446f-9541-7d6b5494df46)
   ![25 1](https://github.com/574n13y/Terraform/assets/35293085/fb021165-37f2-4a14-9cb8-d16f397af649)
   ![26](https://github.com/574n13y/Terraform/assets/35293085/f03e0396-5d1d-41b1-a679-f13b2ff48528)
   ![27](https://github.com/574n13y/Terraform/assets/35293085/93ebc21b-dc16-4466-a1bc-97209b247a1b)
   ![28](https://github.com/574n13y/Terraform/assets/35293085/044721f7-64b6-4a78-b6fa-998d2b5cbb93)
   ![29 0](https://github.com/574n13y/Terraform/assets/35293085/cfb8d1ac-2d64-4569-b72b-b013d829d67c)
   ![29 1](https://github.com/574n13y/Terraform/assets/35293085/8c7ff8a6-adc8-40ee-aab7-72525ad54efb)
   ![29 2](https://github.com/574n13y/Terraform/assets/35293085/f2c9a107-be91-4b0b-ac0d-9f244cdcf936)

                                                     *** We did it ***
   
- Let's get started with [Lab 3](https://github.com/574n13y/Terraform/blob/main/ace-iac-day-two-solved/README.md)


















 

