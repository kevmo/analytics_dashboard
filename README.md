# Reddit.com Analyzer
## Streaming Analytics of various communities on reddit.com

Get a quick overview of a community & its current level of activity.

### Stack:

**AWS Services:** 
* CloudFormation: Infrastructure as Code
* EC2 for running a custom script to query reddit's API & act as a Kinesis Producer
* Kinesis for streaming data
* S3 for data lake
* Glue for crawling data and creating a metadata store
* Athena for analytics and data modeling
* Quicksight for visualization dashboard

#### Helpful Documentation:

https://developer.hashicorp.com/terraform/docs


https://docs.aws.amazon.com/glue/
https://docs.aws.amazon.com/ec2/
https://docs.aws.amazon.com/kinesis



