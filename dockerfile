FROM python:3.6.1

RUN pip install uWSGI==2.0.15
RUN mkdir /sockets

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

COPY uwsgi.ini /etc/uwsgi/

COPY app/ /app
WORKDIR /app

CMD /usr/local/bin/uwsgi --ini /etc/uwsgi/uwsgi.ini --ini /app/uwsgi.ini
