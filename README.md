

### 1. Set Up the Environment
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

### 2. Run the App
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


