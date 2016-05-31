from flask import Blueprint

leaderboards_api = Blueprint('leaderboards_api', __name__)


@leaderboards_api.route('/game1')
def game1():
    return 'game1'


