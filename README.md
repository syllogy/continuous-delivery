# continuous-delivery
This project will set up infrastructure on AWS to allow developers to deploy their application automatically.

# Requirements
* aws account
* basic knowlodge of IAM

# Architecture

<img src="https://github.com/thiagonache/continuous-delivery/blob/master/CI_CD%20platform%20-%20Page%201.png">

# Bootstraping
Note: Automation in progess. I will keep files here just for reference, but please, ignore them.

1. Create a new ECR repo
1. Create new pipeline <a href="https://console.aws.amazon.com/codepipeline/home?region=us-east-1#/create">here</a>
1. Set Pipeline name.
Eg.: PHP-Pipeline-Sample
1. Select Github as Source provider and click on Connect to Github button.
1. Select repository thiagonache/testphp-app and master branch
1. Click on next step.
1. Select AWS Code Build as Build provider
1. Click on Create a new build project
1. Set project name.
Eg.: PHP-Build-Sample
1. On Environment: How to build, select Use an image managed by AWS CodeBuild for Environment image
1. Select operating system as ubuntu, Runtime docker and Version aws/codebuild/docker:17.09.0
1. Add three environment variables (case sensitive):
```
AWS_DEFAULT_REGION
AWS_ACCOUNT_ID
IMAGE_REPO_NAME (variable name is upper case and variable value must be lower case, the same as ECR repo)
```
1. Click on Save build project
1. Click on next step
1. Select No deployment for deploy (we are going to skip this step for now and the deployment will be added further).
1. Click on next step
1. Click on create role
1. Click on allow
1. Click on next step
1. Click on Create pipeline
1. Update Service Role created via wizard by attaching AmazonEC2ContainerRegistryPowerUser to the role
Immediately we should see your pipeline running.


## Terraform further reference (not complete. under construction)
```
$ git clone https://github.com/thiagonache/continuous-delivery/
```

1. Set github token
```
$ export GITHUB_TOKEN=XXXXXXXXXXX
```

1. Apply changes
```
$ terraform init
$ terraform plan
$ terraform apply
```
