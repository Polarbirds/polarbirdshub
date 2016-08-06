from flask import Blueprint, redirect
from flask.templating import render_template

blog_API = Blueprint('blog_api', __name__)

import polarbirdshub as hub


@blog_API.route('/')
def blog_route():
    entries = hub.query_db("SELECT * FROM article WHERE category LIKE 'Python' ORDER BY postDate DESC LIMIT 3")
    return render_template('bloghub.html', entries=entries)


@blog_API.route('/article/<article_id>')
def spesific_article(article_id):
    article = hub.query_db("SELECT * FROM article WHERE id = ?", [article_id], one=True)
    print(article)
    return render_template("article.html", entries={'article': article})
