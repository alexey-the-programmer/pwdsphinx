FROM python:3.7.1-stretch

RUN apt-get update -y


WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

COPY ./install_libs.sh /app/install_libs.sh
RUN chmod +x /app/install_libs.sh
RUN /app/install_libs.sh

COPY . /app


ENTRYPOINT ["/app/entrypoint.sh"]
