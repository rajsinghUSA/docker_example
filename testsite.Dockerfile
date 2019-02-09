FROM ubuntu:18.04
MAINTAINER Raj &amp;lt;raj@fake.email&amp;gt;

#ENTRYPOINT ["sh", "bin/start.sh"]
# ENV VENV=/app
ENV PYTHONUNBUFFERED 1

RUN apt-get -yqq update \
  && apt-get install -yqq python3 python3-dev python3-pip python3-venv
  # && pip install --upgrade pip setuptools

#COPY /volumes/pyramid_app_config/development.ini /app/site_config/development.ini

# RUN mkdir -p /app/venv
# RUN python3 -m venv /app/venv
# RUN ls /app/venv
#RUN source /app/venv/bin/activate

#COPY /volumes/pyramid_app_config/requirements.pip /app/site_config/requirements.pip
#RUN /app/venv/bin/pip install -r /app/site_config/requirements.pip
## RUN /app/venv/bin/pip install -e /app/testsite_config
#COPY /volumes/pyramid_app_config/setup.py /app/setup.py
# #RUN /app/venv/bin/pip install -e "./app[testing]"
# #RUN /app/venv/bin/pserve /app/testsite_config/development.ini --reload

#COPY /volumes/testsite /app/src/testsite

# WORKDIR /app
# RUN source /app/venv/bin/activate
# RUN which python
RUN ls -a

#RUN /app/venv/bin/pserve /app/testsite_config/development.ini --reload
#CMD ["python", "app.py"]
