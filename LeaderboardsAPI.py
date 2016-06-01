from flask import Blueprint, redirect
from flask.templating import render_template

leaderboards_api = Blueprint('leaderboards_api', __name__)

import polarbirdshub as hub


@leaderboards_api.route('/')
def leaderboards():
    games = hub.query_db('SELECT * FROM lb_game')
    return render_template('leaderboards.html', entries=games)


@leaderboards_api.route('/<gamename>')
def leaderboardhub(gamename):
    scoretypes = hub.query_db('SELECT leaderboard.name FROM leaderboard WHERE leaderboard.gamename = ?', [gamename])
    if len(scoretypes) > 1:
        return render_template('leaderboardgame.html', entries=scoretypes)
    else:
        return redirect('/leaderboards/' + gamename + '/' + scoretypes[0][0])


@leaderboards_api.route('/<gamename>/<scoretype>')
def leaderboard(gamename, scoretype):
    scores = hub.query_db(
        'SELECT time_submitted, username, value FROM score WHERE score.typename = ? AND score.gamename = ?',
        [scoretype, gamename])
    return render_template('leaderboard.html', entries=scores)
