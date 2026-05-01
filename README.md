## What this does?
This repo along with https://github.com/bilalamjad-devops/kubernetesmanifest creates a Jenkins pipeline with GitOps to deploy code into a Kubernetes cluster. CI part is done via Jenkins and CD part via ArgoCD (GitOps).


- Kubernetes (Minikube)
- Jenkins
- ArgoCD


### Kubernetes (Minikube):

You can use any Kubernetes or use any cloud service provider. I am using Minikube.


### Jenkins:

Jenkins is used for CI. We work on 3 things; Plugins, Credentials and Job. 



**Plugins**
- Docker plugin  
- Docker Pipeline
- GitHub Integration Plugin
- Parameterized trigger Plugin

**Credentials**

- DockerHub
- GitHub

**Job**

We make 2 jobs

### ArgoCD:


