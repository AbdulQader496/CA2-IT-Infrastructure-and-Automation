A – Cloud Application Architecture Diagram

![alt text](images/image.png)
Figure A1: Architecture diagram of the multi-tier application.
Description: The diagram shows a 3-tier application architecture deployed across 2 Availability zones. It shows an EC2 web server in a public subnet and RDS database in private subnet.

B – CloudFormation Deployment Evidence

![alt text](images/image-1.png)

Figure B1: CloudFormation Network Stack – CREATE_COMPLETE
Description: Screenshot showing successful creation of the aws-network-ca2 stack.

![alt text](images/image-2.png)

Figure B2: CloudFormation Application Stack – CREATE_COMPLETE
Description: Screenshot showing the aws-application-ca2 stack successfully completed

![alt text](images/image-3.png)

Figure B3: CloudFormation Database Stack – CREATE_COMPLETE
Description: Screenshot showing the aws-database-ca2 successfully deployed.


![alt text](images/image-4.png)

Figure B4: Web Tier Output – “This is a Multi-Tier Application”
Description: Public URL of the EC2 instance showing the Apache-hosted webpage confirming that the web tier is functioning correctly.


C – CloudFormation Update Evidence

![alt text](images/image-5.png)

Figure C1: CloudFormation EC2 Instance Type and tag Update
Description: Screenshot showing update successful for upgrading EC2 instance and tag


![alt text](images/image-6.png)

Figure C2: CloudFormation RDS Storage Update
Description: Timeline showing RDS allocated storage expansion from 20 GB to 30 GB, completed using AWS’s ModifyDBInstance process.


D – Terraform Deployment Evidence


![alt text](images/image-7.png)

Figure D1: Terraform Init Output
Description: Screenshot of successful terraform init showing provider installation and directory initialisation in AWS CloudShell.


![alt text](images/image-8.png)

Figure D2: Terraform Plan Output
Description: Screenshot of terraform plan listing all resources to be created in the three-tier architecture.



![alt text](images/image-9.png)
Figure D3: Terraform Apply Output
Description: Console output confirming that Terraform created 20 resources, including VPC, EC2 instance, and RDS instance.


![alt text](images/image-10.png) ![alt text](images/image-11.png)

Figure D4: Terraform Outputs
Description: Terraform output variables including VPC ID, subnet IDs, RDS endpoint, and web public IP


E – Terraform Update Evidence

![alt text](images/image-12.png)

Figure E1: Terraform EC2 Update Plan
Description: Plan output showing in-place modification of EC2 instance from t2.micro to t3.micro and tag added.


![alt text](images/image-13.png)

Figure E2: Terraform EC2 Update Apply Output
Description: Output confirming successful in-place update of EC2 instance and new public IP allocation.



![alt text](images/image-14.png)

Figure E3: Terraform RDS Storage Update Plan
Description: Plan output showing RDS storage being updated from 20 GB to 30 GB.


![alt text](images/image-15.png)

Figure E4: Terraform RDS Storage Update Apply Output
Description: Output confirming successful completion of the RDS storage modification.


