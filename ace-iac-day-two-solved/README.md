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

