# syntax=docker/dockerfile:1
FROM python:3

# have perspective-python installed
RUN pip install perspective-python

# just for demo
# codes from https://github.com/finos/perspective/tree/master/examples/python-tornado-streaming and modifed some lines
# node_modules was installed by `npm install --prefix ./ @finos/perspective-viewer` in directory python-tornado-streaming

RUN pip install tornado

COPY python-tornado-streaming /usr/src/app/python-tornado-streaming

WORKDIR /usr/src/app/python-tornado-streaming

EXPOSE 8080

ENTRYPOINT [ "python", "./server.py" ]



