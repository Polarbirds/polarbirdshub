from flask import Blueprint
from flask.templating import render_template

leaderboards_api = Blueprint('leaderboards_api', __name__)


@leaderboards_api.route('/')
def leaderboards():
    import polarbirdshub as hub
    games = hub.query_db('SELECT * from lb_game')
    return render_template('leaderboards.html', entries=games)


@leaderboards_api.route('/<gamename>')
def game1(gamename):
    return 'game1'


