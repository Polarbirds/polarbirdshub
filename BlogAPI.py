from flask import Blueprint, redirect
from flask.templating import render_template

blog_API = Blueprint('blog_api', __name__)

import polarbirdshub as hub