## What this does?
This repo along with https://github.com/saha-rajdeep/kubernetesmanifest creates a Jenkins pipeline with GitOps to deploy code into a Kubernetes cluster. CI part is done via Jenkins and CD part via ArgoCD (GitOps).


- Kubernetes (Minikube)
- Jenkins
- ArgoCD



### Jenkins plugins

Install the following plugins for the demo.
- Amazon EC2 plugin (No need to set up Configure Cloud after)
- Docker plugin  
- Docker Pipeline
- GitHub Integration Plugin
- Parameterized trigger Plugin

## ArgoCD installation 

Install ArgoCD in your Kubernetes cluster following this link - https://argo-cd.readthedocs.io/en/stable/getting_started/

## How to run!
Follow along with my Udemy Kubernetes course lectures (GitOps Chapter) to understand how it works, detailed setup instructions, with step by step demo. My highest rated Kubernetes EKS discounted Udemy course link in www.cloudwithraj.com
