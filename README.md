This is a Python application. In branch 1, we run the application locally.


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
git checkout branch1
```

Verify:
```bash
git branch --show-current
```


**Set Up the Environment:**
On KillerCoda (Ubuntu/Debian), run these commands to install the dependencies:

Update and install python venv tool:
```bash
sudo apt update && sudo apt install -y python3-venv
```

Create a virtual environment named 'venv':
```bash
python3 -m venv venv
```

Activate the environment:
```bash
source venv/bin/activate
```

Install your requirements

```bash
pip install -r requirements.txt
```

---

**Run the App**

Now, start the Flask server:
```bash
python3 app.py
```

You should see output saying: `* Running on http://0.0.0.0:5000/`

---

**How to View it in KillerCoda**
KillerCoda runs in a browser. To see your app, you cannot just click "localhost." Instead:

Please open port 8080 in KillerKoda.


