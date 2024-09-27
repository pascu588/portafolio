from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("pagina.html")

    if __name__ =='__main___':
        app.run(host='0.0.0.0', debug=True)
