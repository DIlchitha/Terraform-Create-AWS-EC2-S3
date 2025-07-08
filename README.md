
 **
  Here is a step-by-step guide on using Terraform on Ubuntu for creating an EC2 instance and S3 bucket
**

**Step 1:**  login to AWS account and create IAM role and generate access key & secret key,Make sure to include the IAM permission.

 -> Permission:

   Amazons3FullAccess, AmazonEC2FullAccess


 Create an AWS IAM role and provide the secret key and access key

 ![Create IAM role   generate access key and secret key](https://github.com/user-attachments/assets/8c1787cb-450e-4e61-bbf9-ecc58c1bdac8)


Included the IAM Permittions (Amazons3FullAccess, AmazonEC2FullAccess)

![IAM Permition access](https://github.com/user-attachments/assets/c18fb440-8a8a-480f-ab03-f90685a1bd5c)



**Step 2: ** Now, set up the AWS CLI configure via Ubuntu virtual machine

    # Download the AWS CLI v2 installer:
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

    # Unzip the installer:
    unzip awscliv2.zip

    #Run the installer:
    sudo ./aws/install

    #Verify installation:
    aws --version


AWS CLI Installation setup  Configure

![1- aws configure](https://github.com/user-attachments/assets/16b0a932-20a1-4300-b025-4a86449f0e2e)


 -> Configure AWS CLI with your credentials

  AWS Access Key ID (Get in IAM secrets)

  AWS Secret Access Key (Get in IAM secrets)

  Default region name (e.g., us-east-1)

  Default output format (can leave as json)




**Step 3:** Install & set up Terraform via in Ubuntu virtual machine

 -> Download the latest Terraform package:

    wget https://releases.hashicorp.com/terraform/1.5.5/terraform_1.5.5_linux_amd64.zip

 -> Unzip and install:

    unzip terraform_*.zip
    sudo mv terraform /usr/local/bin/

 -> Verify installation

    terraform -version


Set Up & Install  Terraform 

![Terraform Installatoin](https://github.com/user-attachments/assets/2030455f-bbc2-4926-8244-d4d4b994787d)



**Step 4: ** Install git on Ubuntu and make a clone from the git-repo

![2 - clone the repository ](https://github.com/user-attachments/assets/1c62ef9e-4d5e-4c3b-af58-f226a3e259c8)


Navigate to the Terraform file directory

![3 - go to actual path in terraform file have](https://github.com/user-attachments/assets/ed281ed2-1ad4-4fd3-b358-b7e1f8007ee6)



**Step 5:**  Initialize and Apply the Terraform Configuration  

  -> Initialize Terraform
  
     terraform init

  -> Review the execution plan
  
     terraform plan

  -> Apply the configuration (will create resources)
  
     terraform apply


Terraform init

![4 - Terraform init](https://github.com/user-attachments/assets/8cb5c5cf-f56b-4be5-b054-c72e145567ee)


Terraform plan

![5 - Terraform plan](https://github.com/user-attachments/assets/467a51e2-1f7b-4513-bc49-946097f01c86)


Terraform apply

![6 - Terraform apply](https://github.com/user-attachments/assets/72fd50f5-8cb5-45ff-b082-7b05acfd19ce)



**Step 5:**  Check the Available Resources properly create (EC2, S3)

EC2 

![8 - EC2 VM creation](https://github.com/user-attachments/assets/6e8e5917-1497-468f-9294-9c0ae98102a8)


S3

![7 - S3 bucket creation](https://github.com/user-attachments/assets/2ebc20a3-f8d6-4046-9eae-883e6946d708)











