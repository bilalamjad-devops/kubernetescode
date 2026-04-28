Since you are practicing on **KillerCoda**, you have a pre-installed Linux environment. To run this Flask app locally, you need to set up a "Virtual Environment"—this is a best practice to keep your system clean.

Here is the step-by-step guide to running your app:

### 1. Prepare the Files
Inside the KillerCoda terminal, create your files:

```bash
# Create the requirements file
cat <<EOF > requirements.txt
Flask==2.2.5
Werkzeug==2.2.3
EOF

# Create the application file
cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Please subscribe, like, and comment on this video, TY!!!'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
EOF
```

---

### 2. Set Up the Environment
On KillerCoda (Ubuntu/Debian), run these commands to install the dependencies:

```bash
# Update and install python venv tool
sudo apt update && sudo apt install -y python3-venv

# Create a virtual environment named 'venv'
python3 -m venv venv

# Activate the environment
source venv/bin/activate

# Install your requirements
pip install -r requirements.txt
```

---

### 3. Run the App
Now, start the Flask server:

```bash
python3 app.py
```

You should see output saying: `* Running on http://0.0.0.0:5000/`

---

### 4. How to View it in KillerCoda
KillerCoda runs in a browser. To see your app, you cannot just click "localhost." Instead:

1.  Look for the **"Traffic/Ports"** icon or tab in the KillerCoda interface (usually at the top or side).
2.  Select **"Access Port 5000"**.
3.  A new tab will open showing your message: *"Please subscribe, like, and comment on this video, TY!!!"*


