from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def phishing_website():
    return render_template("amazon/index.html")

if __name__ == "__main__":
    app.run(host='127.0.0.1',port=5003,debug=True) 