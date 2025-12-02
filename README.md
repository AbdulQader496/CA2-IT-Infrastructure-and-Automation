# Infrastructure Evidence

Consistent sizing and clearer captions for each screenshot. All images are scaled to the same width.

## A – Cloud Application Architecture Diagram

<p align="center">
  <img src="images/image.png" alt="Three-tier application architecture across two Availability Zones with public web EC2 and private RDS" width="720" />
</p>

_Figure A1 – Three-tier architecture across two Availability Zones with a public EC2 web tier and a private RDS database._

## B – CloudFormation Deployment Evidence

<p align="center">
  <img src="images/image-1.png" alt="CloudFormation aws-network-ca2 stack showing CREATE_COMPLETE" width="720" />
</p>

_Figure B1 – Network stack (`aws-network-ca2`) created successfully._

<p align="center">
  <img src="images/image-2.png" alt="CloudFormation aws-application-ca2 stack showing CREATE_COMPLETE" width="720" />
</p>

_Figure B2 – Application stack (`aws-application-ca2`) created successfully._

<p align="center">
  <img src="images/image-3.png" alt="CloudFormation aws-database-ca2 stack showing CREATE_COMPLETE" width="720" />
</p>

_Figure B3 – Database stack (`aws-database-ca2`) created successfully._

<p align="center">
  <img src="images/image-4.png" alt="Public web page confirming web tier is running" width="720" />
</p>

_Figure B4 – Public URL of the EC2 instance showing the Apache-hosted multi-tier confirmation page._

## C – CloudFormation Update Evidence

<p align="center">
  <img src="images/image-5.png" alt="CloudFormation stack update for EC2 instance type and tags" width="720" />
</p>

_Figure C1 – EC2 instance type and tag update applied via CloudFormation._

<p align="center">
  <img src="images/image-6.png" alt="CloudFormation RDS storage modification from 20 GB to 30 GB" width="720" />
</p>

_Figure C2 – RDS allocated storage increased from 20 GB to 30 GB using ModifyDBInstance._

## D – Terraform Deployment Evidence

<p align="center">
  <img src="images/image-7.png" alt="Terraform init output in AWS CloudShell" width="720" />
</p>

_Figure D1 – `terraform init` completed with provider installation._

<p align="center">
  <img src="images/image-8.png" alt="Terraform plan output listing resources to create" width="720" />
</p>

_Figure D2 – `terraform plan` showing resources for the three-tier architecture._

<p align="center">
  <img src="images/image-9.png" alt="Terraform apply output confirming 20 resources created" width="720" />
</p>

_Figure D3 – `terraform apply` created 20 resources including VPC, EC2, and RDS._

<p align="center">
  <img src="images/image-10.png" alt="Terraform outputs showing IDs, endpoints, and IPs" width="355" />
  <img src="images/image-11.png" alt="Terraform outputs continued showing RDS endpoint and web public IP" width="355" />
</p>

_Figure D4 – Terraform output variables: VPC ID, subnet IDs, RDS endpoint, and web public IP._

## E – Terraform Update Evidence

<p align="center">
  <img src="images/image-12.png" alt="Terraform plan showing EC2 update from t2.micro to t3.micro with tag change" width="720" />
</p>

_Figure E1 – `terraform plan` for EC2 update from t2.micro to t3.micro with tag adjustment._

<p align="center">
  <img src="images/image-13.png" alt="Terraform apply output confirming EC2 update and new public IP" width="720" />
</p>

_Figure E2 – `terraform apply` confirms EC2 update completed and new public IP assigned._

<p align="center">
  <img src="images/image-14.png" alt="Terraform plan showing RDS storage update from 20 GB to 30 GB" width="720" />
</p>

_Figure E3 – `terraform plan` for RDS storage increase from 20 GB to 30 GB._

<p align="center">
  <img src="images/image-15.png" alt="Terraform apply output confirming RDS storage update" width="720" />
</p>

_Figure E4 – `terraform apply` confirms RDS storage modification completed._
