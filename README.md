# Containerize the Application

This is a Python application. In branch 2, we containerize the application.


Fork & Clone the repository:
```bash
 git clone https://github.com/bilalamjad-devops/kubernetescode.git
```

Change directory:
```bash
cd kubernetescode
```

See git branches:
```bash
git branch -a
```

Switch git branch:
```bash
git checkout branch2
```

Verify:
```bash
git branch --show-current
```
---

**Dockerfile**


**Build image**

Build:

```docker
docker build -t my-image .
```
See docker images:
```docker
docker images 
```


**Run container:**

```docker
docker run -itd -p 8080:5000 my-image
```

Good, see logs:
```docker
docker logs containerid
```

