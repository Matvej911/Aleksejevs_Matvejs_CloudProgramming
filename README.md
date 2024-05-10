# Terraform Infrastructure Deployment on AWS: High Availability Architecture

## Project Overview

This project demonstrates the deployment of a high availability infrastructure on Amazon Web Services (AWS) using Terraform. The architecture includes key AWS services such as Amazon EC2, Elastic Load Balancing (ELB), Auto Scaling Group (ASG), and Virtual Private Cloud (VPC).

## AWS Services and Tools Utilized

**Amazon EC2:** Provides scalable compute capacity to host web applications.
**Amazon ELB:** Distributes incoming traffic across multiple EC2 instances for improved availability and fault tolerance.
**Amazon ASG:** Automatically adjusts the number of EC2 instances based on traffic demand to maintain performance and availability.
**Amazon VPC:** Enables creation of a virtual network to isolate resources and provide enhanced security.
**AWS Launch Template:** Defines the configuration of EC2 instances, making it easier to deploy consistent environments.

## Project Scope

The project focuses on creating a scalable and fault-tolerant infrastructure by leveraging AWS services and tools to ensure high availability and reliability of applications hosted in the cloud.

## Architecture Diagram

![illustration](https://github.com/Matvej911/Aleksejevs_Matvejs_CloudProgramming/assets/72816648/4d8e6f59-b27b-4669-8076-dcc60f1d0499)

## Getting Started

To deploy the high availability infrastructure on AWS using Terraform:

1. Clone the project repository to your local machine in your code editor.

2. Since we will be working with AWS to provision our infrastructure using Terraform, we also need to install AWS CLI.
   Follow the steps listed [here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html), to install the latest version of AWS CLI for your OS.

3. Log in to AWS Web Console and create a user for Terraform. The user needs programmatic access to AWS. For now, provide the administrative role to this user

4. Once the user is successfully created, take a note of the Access Key ID and Secret Access Key.

5. We need to configure these credentials in the AWS CLI we just installed. Open the terminal and run the

```
aws configure
```

command to configure default credentials.

6. Navigate to the Terraform configuration directory.

Update the `variables.tfvars` file with your AWS Ami, region, and other configuration parameters.

7. Run

```
terraform init
```

to initialize the Terraform configuration.

8. Run

```
terraform plan
```

to preview the changes that will be applied.
![Screenshot 2024-05-10 140623](https://github.com/Matvej911/Aleksejevs_Matvejs_CloudProgramming/assets/72816648/c0f18ce0-e846-4854-8a58-9da595ded060)

9. Run

```
terraform apply
```

to provision the infrastructure on AWS.

10. After successful deployment, go to your AWS account search Load Balancers, copy domain and opne it in your browser.
![Screenshot 2024-05-08 112932](https://github.com/Matvej911/Aleksejevs_Matvejs_CloudProgramming/assets/72816648/8c1562e4-4b38-4311-9b57-ba2ceb1f7559)

## Conclusion

This project demonstrates the power of Terraform in automating the deployment of a highly available infrastructure on AWS. By following best practices and leveraging AWS services, organizations can achieve greater reliability, scalability, and security for their cloud-based applications.

## Author

Matvejs Aleksejevsky (https://github.com/Matvej911)
