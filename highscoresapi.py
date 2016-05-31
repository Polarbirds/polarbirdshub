from flask import Blueprint

highscores_api = Blueprint('highsccores_api', __name__)


@highscores_api.route('/game1')
def game1():
    return 'game1'


