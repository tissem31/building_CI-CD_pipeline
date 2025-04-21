# Flask Sklearn CI/CD Pipeline Project

This project demonstrates how to build and deploy a Flask-based machine learning web application using CI/CD pipelines.
We first test and automate using GitHub Actions, then deploy and extend the automation using Azure DevOps Pipelines.

# Overview

This is a machine learning project built with Flask and Scikit-Learn. The purpose is to automate testing and deployment using CI/CD practices.

   - The application predicts housing prices using a linear regression model.

   - The CI/CD flow includes:

        - Linting, testing, and packaging the application using make and pytest.

        - GitHub Actions to run these tests automatically.

        - Azure Pipelines for automated deployment to Azure App Service.

        - Final result: A web app with a /predict endpoint that returns a prediction based on input features.


## Project Plan

* Trello board 📋 : https://trello.com/b/rmi2p7JE/building-a-ci-cd-pipeline
* Project Plan (Google Sheet) 📄 : https://docs.google.com/spreadsheets/d/16ePRKGLNfsUa3_YC4CXD1QcUR_0PgfndWVGlqvZcVsA/edit?gid=1348135932#gid=1348135932

## Instructions

* 📊 Architectural Diagram

graph TD;
    User --> AzureCloudShell --> GitHub;
    GitHub --> GitHubActions --> Tests --> AzureWebApp;
    AzureDevOps --> AzurePipelines --> AzureWebApp;
    AzureWebApp --> PredictionAPI;

* ⚙️ Run Instructions (End-to-End Setup)

    A user with no context can follow these steps to run the project:

* Clone the repo
```bash
git clone git@github.com:tissem31/building_CI-CD_pipeline.git
cd building_CI-CD_pipeline
```
📸 Screenshot: Colne the repos Github
![clone repos github](https://github.com/user-attachments/assets/bacfef27-88ae-436a-a9fe-f7ebb9633d7a)

* Install dependencies
running the `make all` command from the `Makefile`
```bash
make all
```

* Deploy to Azure App Service
```bash
az webapp up --name flaskmlibitlast07 --sku B1 --runtime "PYTHON:3.10" --logs
```
📸 Screenshot: Successful web app service created
![webapp created](https://github.com/user-attachments/assets/f123e27d-e12e-4d5c-85fe-77896c61d03c)

* Test the app
```bash
(azure-devops) ibtissem_seghier [~/building_CI-CD_pipeline/flask-sklearn]$ python app.py 
 * Serving Flask app 'app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5000
 * Running on http://10.0.1.26:5000
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 961-857-168
```
![test app   comma,d](https://github.com/user-attachments/assets/29fe95a3-1e34-4819-ba9f-09246f23c087)

* Output of streamed log files from deployed application
![logs webapp](https://github.com/user-attachments/assets/5058d258-a81e-4abc-b5a7-e928615adbba)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
📸 Screenshot: Successful build in Azure DevOps
![succefful azurepipeline](https://github.com/user-attachments/assets/44e1dc1d-8b9e-4780-a90d-03ffda177b25)

* Test the deployed endpoint
```bash
(azure-devops) ibtissem_seghier [~/building_CI-CD_pipeline/flask-sklearn]$ ./make_predict_azure_app.sh 
Port: 443
{"prediction":[2.431574790057212]}
```
📸 Screenshot: Output of successful prediction from deployed app
![webapp deployed succeffuly](https://github.com/user-attachments/assets/3f00e6ab-d6a3-4363-8b17-da0f15826d51)

* GitHub Actions CI Badge
Ensure the README.md contains your Actions badge:

[![Python application test with Github Actions](https://github.com/tissem31/building_CI-CD_pipeline/actions/workflows/pythonapp.yml/badge.svg?branch=master)](https://github.com/tissem31/building_CI-CD_pipeline/actions/workflows/pythonapp.yml)


## Enhancements

* Add more tests to make sure everything works well.
* Docker Support: Containerize the app using Docker for better portability and scalability, and deploy it using Azure Container Instances or Azure Kubernetes Service.
* Pipeline Optimization: Improve CI/CD pipeline performance by caching dependencies and running jobs in parallel where possible.

## Demo 

<TODO: Add link Screencast on YouTube>

