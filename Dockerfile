FROM python:3
MAINTAINER Spencer Bliven <spencer.bliven@gmail.com>

WORKDIR /usr/src/app

RUN pip install --no-cache-dir mdsrv

EXPOSE 80

ENTRYPOINT [ "mdsrv" ]
CMD ["--host", "0.0.0.0", "--port", "80"]