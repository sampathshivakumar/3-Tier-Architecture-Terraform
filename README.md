## Three-Tier Architecture in AWS Using Terraform
The three-tier architecture is the most popular implementation of a multi-tier architecture and consists of a single presentation tier, logic tier, and data tier. 

The following illustration shows an example of a simple, generic three-tier application.
![Three-tier architecture](https://user-images.githubusercontent.com/119833411/243164402-aed0f0fd-429e-4513-b841-7c21554dce99.jpg)

**GitHub Repo:-** https://github.com/sampathshivakumar/3-Tier-Architecture-Terraform

### Resources need to be created are
* **Custom VPC**
* **2-Subnets (Public)**
* **1 Subnet (Private)**
* **2-EC2-Instances**
* **Security Group**
* **Elastic-IP**
* **NAT Gateway**
* **Internet Gateway**
* **Route Table**
* **Application Load Balancer**
* **Webserver**
* **MySQL-DB**

### Flow of creating Three-Tier Architecture using AWS Management Console
### Create a Custome VPC
![1](https://user-images.githubusercontent.com/119833411/243197354-ddc3fef7-4332-4077-aa9e-3db64cc32427.jpg)

![2](https://user-images.githubusercontent.com/119833411/243197723-15f864d3-3e9d-49f4-82d1-c5ee11fe0e28.jpg)

![3](https://user-images.githubusercontent.com/119833411/243197884-93600f9e-d26f-43ab-887a-16112546f81a.jpg)

### Now create Subnets
![4](https://user-images.githubusercontent.com/119833411/243197966-b5d78e65-5376-4432-97fb-0a2965fb4f0c.jpg)

![5](https://user-images.githubusercontent.com/119833411/243198639-c017e02a-c513-40b4-ad01-b133fc69300e.jpg)

![6](https://user-images.githubusercontent.com/119833411/243198701-63281e2b-393e-451f-afff-199f4392ee2e.jpg)

### Now Create Route tables
![7](https://user-images.githubusercontent.com/119833411/243198828-9f1bca90-fed2-4942-8713-2db97823ca70.jpg)

![8](https://user-images.githubusercontent.com/119833411/243198891-ee25bc09-4026-4df5-a505-fa1044a044d5.jpg)

![9](https://user-images.githubusercontent.com/119833411/243199111-e26ff8ee-8fbe-4028-86a1-493911f8d320.jpg)

![10](https://user-images.githubusercontent.com/119833411/243199192-b6cbed57-b611-487b-9f4f-a29200150d56.jpg)

### Now lets Create Internet gateway
![11](https://user-images.githubusercontent.com/119833411/243199271-e51d944c-a2dc-40ce-959b-70d384aa1d4d.jpg)

![12](https://user-images.githubusercontent.com/119833411/243199330-dc2cc9da-f0ab-4c5b-8f6e-eb637d2dca5d.jpg)

### Attach the Internet gateway to a VPC
![13](https://user-images.githubusercontent.com/119833411/243199429-cbd5e639-4427-47e2-8cfc-c5a1e7245f86.jpg)

![14](https://user-images.githubusercontent.com/119833411/243199464-b2a84b69-b885-4f4a-9fa4-d06d364e3cdc.jpg)

![15](https://user-images.githubusercontent.com/119833411/243199499-be75a1cc-98bd-48fa-965e-f2a0b9cfd471.jpg)

### Let's Create NAT Gateway
![16](https://user-images.githubusercontent.com/119833411/243199564-4dd94266-d99f-44f9-8601-3a5c5b6782ff.jpg)

![17](https://user-images.githubusercontent.com/119833411/243199717-86eea587-201d-4557-ad0d-10c8cf117c9a.jpg)

### Now lets Edit subnet associations and Add Route to Internet gateway to my-Public-subnet
![18](https://user-images.githubusercontent.com/119833411/243200110-cdbbbccd-5022-4838-84e4-f5b3d6ad0e42.jpg)

![19](https://user-images.githubusercontent.com/119833411/243200181-a92f7647-509c-48b2-8b82-86015e1cf712.jpg)

![20](https://user-images.githubusercontent.com/119833411/243200197-7312fa1b-817f-4fda-994f-b149218dbbf5.jpg)

![21](https://user-images.githubusercontent.com/119833411/243200340-5c9ff5a1-5124-4df2-aa8f-453ec7ea9b1e.jpg)

![22](https://user-images.githubusercontent.com/119833411/243200561-f3841b72-1706-43e0-9187-e4e72cc418c1.jpg)

### Now lets Edit subnet associations and Add Route to NAT-Gateway to my-Private-subnet
![23](https://user-images.githubusercontent.com/119833411/243200657-5ee89a41-1636-4c95-8b02-a58a87801a60.jpg)

![24](https://user-images.githubusercontent.com/119833411/243200724-067e6afe-3df1-4f7c-858f-eddc19e9c08d.jpg)

![25](https://user-images.githubusercontent.com/119833411/243200806-f44d9a18-f47a-45e0-b477-85c3b2a357bc.jpg)

### Now we can see the Resource map in Your VPCs
![26](https://user-images.githubusercontent.com/119833411/243200952-b606adcd-a841-4c9f-aafd-1ce613598ee2.jpg)

![27](https://user-images.githubusercontent.com/119833411/243201114-91932f9a-8c03-4d0a-a0d1-f5cbdb6c67d0.jpg)

### Now let's Clean the resoures
![28](https://user-images.githubusercontent.com/119833411/243201371-764bdf96-b199-451b-a21b-92bb39e9f4c5.jpg)

### Now let's try to build the same using Terraform

**In two ways we can build the Three-Tier Architecture in AWS Using Terraform

![Untitled Diagram](https://user-images.githubusercontent.com/119833411/244410058-a168d6d4-4a73-4a1a-bb53-303c0fc2dedd.jpg)

**As i have previously build EC2 instance with Security group using Terraform resources, i would like to go with module this time.**

### I have created a folder and named it Three-Tier Architecture on my pc.
![29](https://user-images.githubusercontent.com/119833411/244413136-9ddfa486-aa93-4abe-b0fe-7f983f1c9f48.jpg)

**I have created 3 files, versions.tf, variables.tf and vpc.tf**
**Inside of vpc.tf only we are going to use/create vpc terraform module**

![30](https://user-images.githubusercontent.com/119833411/244414534-b4994940-1ff6-449a-8f84-8067ac1e4803.jpg)

### Lets start writing terraform configuration files.
![31](https://user-images.githubusercontent.com/119833411/244416965-d4108e22-6b89-4b81-80e6-8f628f5d513f.jpg)

**we have to input vpc module details in vpc.tf**

![32](https://user-images.githubusercontent.com/119833411/244431994-4502f36d-c2b8-495a-a2cb-cc3c66514c30.jpg)

![34](https://user-images.githubusercontent.com/119833411/244447029-c55e1620-0bd5-4533-bcf0-0cc1049b0718.jpg)

**For subnet divisions i am using Visual Subnet Calculator**

**link:-** https://www.davidc.net/sites/default/subnets/subnets.html

![33](https://user-images.githubusercontent.com/119833411/244446415-98549f8d-9f36-4a95-a10e-80b6963cd479.jpg)

### Now lets apply terraform init 

![35](https://user-images.githubusercontent.com/119833411/244447570-37f5743c-04d0-45ad-8ce2-b041398dbab1.jpg)

**After terraform init, .terraform directory and .terraform.lock.hcl file is created.

![36](https://user-images.githubusercontent.com/119833411/244447859-e480fc6a-d495-462b-a99d-f7e81060052a.jpg)

**.terraform.lock.hcl file contains a lock file format specific to HCL (HashiCorp Configuration Language) and is used to lock the versions of the provider plugins and modules used in your Terraform configuration.**

![37](https://user-images.githubusercontent.com/119833411/244448568-8e6d30e2-fb66-4f43-9950-063df3a043e9.jpg)

### .terraform directory structure

![terraform dir structure](https://user-images.githubusercontent.com/119833411/244452493-b1691b68-37ed-4996-97d4-58f8e214ecb4.jpg)

### Apply terrafor validate 

![38](https://user-images.githubusercontent.com/119833411/244453529-328bb902-ca6c-46ac-8741-7ee1a9ee3462.jpg)

### Apply terraform plan and apply

Plan: 30 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes 
  
### you can see my-own-vpc created

![39](https://user-images.githubusercontent.com/119833411/244454423-6b46f751-cc40-46ae-ae1a-3cb8b5b55103.jpg)

### Three-Tier Architecture is created using terraform 
![3-tire](https://user-images.githubusercontent.com/119833411/244457794-154aa981-c377-4083-a0d1-e0741ffef576.jpg)

**Thank you for reading this post! I hope you found it helpful. If you have any feedback or questions,Please connect with me on LinkedIn at https://www.linkedin.com/in/sampathsivakumar-boddeti-1666b810b/. Your feedback is valuable to me. Thank you!**














