from flask import Blueprint
from flask.templating import render_template

blog_API = Blueprint('blog_api', __name__)

import polarbirdshub as hub


@blog_API.route('/')
def blogRoute():
    entries = hub.query_db(
        "SELECT * FROM article WHERE category LIKE 'java' ORDER BY postDate LIMIT 3")
    return render_template("blog.html", entries=entries)


@blog_API.route('/article/<article_id>')
def specificArticle(article_id):
    article = hub.query_db("SELECT * FROM article WHERE id = ?", [article_id], one=True)
    return render_template("article.html", entries={'article': article})
