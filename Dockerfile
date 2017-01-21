FROM python:2-onbuild
WORKDIR /opt/app/render
ADD . /opt/app/render

CMD [ "python", "./main.py" ]

EXPOSE 5000