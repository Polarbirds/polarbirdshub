import sqlite3

from flask import g, render_template, Flask, request

from LeaderboardsAPI import leaderboards_api

app = Flask(__name__)

app.register_blueprint(leaderboards_api, url_prefix='/leaderboards')

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
def hello_world():
    return render_template('index.html')


@app.route('/home')
def home():
    return render_template('home.html')


@app.route('/data', methods=('POST',))
def handledata():
    print(str(request.values))
    return "OK"


if __name__ == '__main__':
    app.run()
