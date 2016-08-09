import json
import os
import signal
import sqlite3
from distutils import log

from flask import g, render_template, Flask, request, redirect
from flask.globals import session
from flask.helpers import url_for, flash
from simplepam import authenticate

from LeaderboardsAPI import leaderboards_api
from BlogAPI import blog_API

app = Flask(__name__)

# app.config['DEBUG'] = False
# app.config['SERVER_NAME'] = 'polarbirds.com'

app.register_blueprint(leaderboards_api, url_prefix='/leaderboards')
app.register_blueprint(blog_API, url_prefix='/blog')

DATABASE = 'polarbirds.db'
DEBUG = True
SECRET_KEY = 'SeriouslySecretKey'

app.config.from_object(__name__)


def connect_db():
    rv = sqlite3.connect(app.config['DATABASE'])
    rv.row_factory = sqlite3.Row
    return rv


def get_db():
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db


def init_db():
    with app.app_context():
        db = get_db()
    with app.open_resource('schema.sql', mode='r') as f:
        db.cursor().executescript(f.read())
    db.commit()
    with app.open_resource('dummydata.sql', mode='r') as f:
        db.cursor().executescript(f.read())
    db.commit()


init_db()


def put_db(table, values):
    query = "INSERT INTO " + table + " VALUES ("
    for value in values:
        query += "?, "
    query = query[:-2] + ")"
    db = get_db()
    db.execute(query, values)
    db.commit()


def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/data', methods=('POST',))
def handledata():
    print(str(request.values))
    return "OK"


@app.route('/login', methods=['GET', 'POST'])
def login():
    print(request.method)
    if request.method == 'POST':
        password = request.form['password']
        username = request.form['username']
        if authenticate(str(username), str(password)):
            session['username'] = request.form['username']
            return redirect('/')
        else:
            flash('Invalid username or password. This is NOT a test (or is it)')
            return render_template('login.html')
    elif request.method == 'GET':
        if session.get('username'):
            return redirect('/')
        return render_template('login.html')
    else:
        return redirect('/')


@app.route('/logout')
def logout():
    session.pop('username')
    return redirect('/')


@app.route('/bm29FHZzfG20Pu6LKeE35d8PA', methods=['POST'])
def github_hook():
    try:
        data = json.loads(request.form['payload'])
        site_url = 'https://github.com/Polarbirds/polarbirdshub'
        site_branch = 'master'
        data_url = data.get('repository', {}).get('url')
        data_branch = data.get('ref')
        if data_url == site_url and site_branch in data_branch:
            log.info("Code change detected. Restarting now...")
            os.system('git pull')
            with open('/tmp/polarbirdshub.pid', 'r') as f:
                pid = int(f.read())
                os.kill(pid, signal.SIGHUP)
    except ValueError:
        log.error("Unable to parse Github payload")
    return 'ok'


@app.route('/google3b4c7eb337ddee7b.html')
def googlestuff():
    return render_template('google3b4c7eb337ddee7b.html')


if __name__ == '__main__':
    app.run()
