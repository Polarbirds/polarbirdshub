from flask import g, render_template, flash, Flask, session, redirect, url_for, \
    request

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/home')
def home():
    return redirect(url_for("hello_world"))

if __name__ == '__main__':
    app.run()
