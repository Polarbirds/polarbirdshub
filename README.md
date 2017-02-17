# A hub for polarbids.com
This repo is the flask-project of polarbirds.com.

## How to restart gunicorn

Log in as the www-data user:

```sudo su -s /bin/bash www-data```

Navigate to ```~/python/polarbirdshub```

Check if the TMUX-tession is alive:

```bash
tmux at -t 0
```

It it is not, simply type:

```bash
tmux
```

To start it, and:

```bash
source .venv/bin/activate
```

To activate virtualenv.

Then type:

```bash
gunicorn polarbirdshub:app -p /tmp/polarbirdshub.pid
```

To start that shit.
