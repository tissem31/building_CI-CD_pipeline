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
* Project Plan (Google Sheet) 📄 : 

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

* Install dependencies
running the `make all` command from the `Makefile`
```bash
make all
```

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


* Deploy to Azure App Service
```bash
az webapp up --name flaskmlibitlast07 --sku B1 --runtime "PYTHON:3.10" --logs
```

* Output of streamed log files from deployed application

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Test the deployed endpoint
```bash
(azure-devops) ibtissem_seghier [~/building_CI-CD_pipeline/flask-sklearn]$ ./make_predict_azure_app.sh 
Port: 443
{"prediction":[2.431574790057212]}
```

* GitHub Actions CI Badge

Ensure the README.md contains your Actions badge:

[![Python application test with Github Actions](https://github.com/tissem31/building_CI-CD_pipeline/actions/workflows/pythonapp.yml/badge.svg?branch=master)](https://github.com/tissem31/building_CI-CD_pipeline/actions/workflows/pythonapp.yml)


## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>



# Create web app
![webapp created](https://github.com/user-attachments/assets/f6e0f5ee-9d82-4834-9b77-08a42c1a9953)

# Deployement center app service
![deployment center app service](https://github.com/user-attachments/assets/6ec48141-364d-48d3-9579-96d967741cc8)

# Error Predict sh
![problem-predict_ssh](https://github.com/user-attachments/assets/dae457f3-27da-489f-8371-bb7f37033f70)
