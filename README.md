## What this does?
This repo along with https://github.com/bilalamjad-devops/kubernetesmanifest creates a Jenkins pipeline with GitOps to deploy code into a Kubernetes cluster. CI part is done via Jenkins and CD part via ArgoCD (GitOps).


- Kubernetes (Minikube)
- Jenkins
- ArgoCD


Kubernetes (Minikube):



<!--12-->

<!--created: 31-March-2026-->

<!--Thanks: https://medium.com/@byrid3/setup-minkube-b9ca3b2c9124-->

Install Docker:

```bash
sudo su
sudo apt update && apt -y install docker.io
```

Install kubectl:

```bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/kubectl
```

Install Minikube:

```bash
curl -Lo minikube https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

Install Conntrack:

```bash
sudo apt install conntrack
```

Start Minikube:

```bash
minikube start --vm-driver=none
minikube status
```



Jenkins:

In Jenkins, we work on 3 3 things; 

Jenkins is used for CI. We work on 3 things; Plugins, Credentials and Job. 

<!-- 1 -->

<!-- created: 31-March-2026-->

Install Java:

```bash
sudo apt update
sudo apt install openjdk-21-jre-headless -y
java -version
```

Install Jenkins (Long Term Support release):

```bash
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
```

Access Jenkins:

```bash
PublicIP:8080
```
Password:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Plugins:
- Docker plugin  
- Docker Pipeline
- GitHub Integration Plugin
- Parameterized trigger Plugin

Credentials:

- DockerHub
- GitHub

Job:

We make 2 jobs

ArgoCD:

## 1. Installing ArgoCD (Manifest Way)

If you are using a Cloud Provider (like AWS) that supports LoadBalancers, your `patch` command is correct. If you are on a local VM or a simple EC2, you might need to use `NodePort`.

### **Step 1: Create Namespace and Install**
```bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

### **Step 2: Expose the UI**
If you want to use a specific port (like your 31894), it is better to use **NodePort**:
```bash
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
```
```bash
kubectl get svc argocd-server -n argocd
```

### **Step 3: Get the Admin Password**
```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```
*(Note: I added `; echo` at the end so the password appears on a new line in your terminal).*

---




## How to run!
Follow along with my Udemy Kubernetes course lectures (GitOps Chapter) to understand how it works, detailed setup instructions, with step by step demo. My highest rated Kubernetes EKS discounted Udemy course link in www.cloudwithraj.com
