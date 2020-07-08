# DashKubernetes

## Table of Contents
* [Description](#description)
* [Execution Pipeline](#execution-pipeline)
* [Setup](#setup)

## Description
It's a hassle to deploy websites using Google Kubernetes Engine(GKE) in Google Cloud Platform(GCP). There are a lot of steps involved in the process which takes a lot of time to configure. The script provided here aims to solve this problem. 
It was used to deploy our project Mr.Dash (a chatbot for Daksh Fest at SASTRA Deemed to be University) in GCP.
This can also be used for deploying any static website using GKE.

## Execution Pipeline
<div align="center">
<img src="https://drive.google.com/uc?export=view&id=1tJUlKKHoBDRzyXbKgbtjGdB0ugQ1oZKS"</img>
</div>

The following steps will be performed once the script in the repository is executed. 
* #1. Create a Docker image for the web application.
* #2. Run and test the Docker image locally. 
* #3. Push the Docker image to Google Container Registry (GCR).
* #4. Create a Kubernetes Cluster with the required number of nodes.
* #5. Pull the image from GCR whenever a deployment is either created or updated.
* #6. Expose the deployment to obtain External IP address through Kubernetes API.

## Setup
1. Log in to your Google Cloud Platform account and note the Project ID.
2. Open the Cloud Shell and check if it's associated with the current Project's ID.
3. Clone this GitHub repository using the command given below:
```
git clone https://github.com/AnandaRaju742/DashKubernetes.git
```
4. Replace the index.html file in the app directory with your website's file.
5. Docker file in the app directory can be edited to change the configuration.
6. Execute the script.sh file using the command given below:
```
./script.sh
```
7. Enter the Project ID when prompted.
8. Once the IP address is exposed, you can visit the Containerized Web Application.


