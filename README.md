# Employee Management Application

A Java application built with Maven and deployed to AWS using GitHub Actions.

## Project Objectives

- Build and test a Java application using Maven.
- Publish versioned Java packages to AWS CodeArtifact.
- Automate application deployment using AWS CodeDeploy.
- Run the application on an Amazon EC2 instance.
- Automate CI/CD using GitHub Actions and AWS IAM OIDC.
- Practice application versioning and deployment rollback.

## Technology Stack

- Java 17
- Apache Maven
- AWS CodeArtifact
- AWS CodeDeploy
- Amazon EC2
- Amazon S3
- GitHub Actions
- AWS IAM

## Application Endpoints

| Endpoint | Purpose |
|---|---|
| `/` | Application status and version |
| `/version` | Application version |

The application listens on port 8080.

## Planned Architecture

1. Developer pushes code to GitHub.
2. GitHub Actions builds the application and runs tests.
3. Maven publishes the versioned JAR to AWS CodeArtifact.
4. GitHub Actions packages the JAR and deployment scripts.
5. The deployment bundle is uploaded to Amazon S3.
6. AWS CodeDeploy deploys the application to Amazon EC2.
7. Users access the running application.

## Deployment Region

AWS Mumbai Region: `ap-south-1`

## Project Status

- [x] Java application created
- [x] Maven build configured
- [x] Unit test created
- [x] GitHub Actions build and test workflow
- [ ] AWS CodeArtifact configuration
- [ ] AWS CodeDeploy configuration
- [ ] EC2 deployment
- [ ] Automated version upgrade and rollback
