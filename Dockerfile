FROM python:3.7.1-stretch

RUN apt-get update -y


WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

COPY . /app

RUN mkdir /app/temp
RUN cd /app/temp
RUN wget -O "/app/temp/libsodium-1.0.16.tar.gz" "https://download.libsodium.org/libsodium/releases/libsodium-1.0.16.tar.gz"
RUN tar xzf /app/temp/libsodium-1.0.16.tar.gz
RUN cd libsodium-1.0.16
RUN /app/temp/libsodium-1.0.16/configure
RUN make && make check
RUN make install
RUN cd ..

RUN git clone "https://github.com/stef/libsphinx"
RUN cd /app/temp/libsphinx
RUN git submodule update --init --recursive --remote
RUN cd /app/temp/libsphinx/src
RUN make
RUN cd ../..

RUN cd ..
RUN rm -rf /app/temp


ENTRYPOINT ["/app/entrypoint.sh"]
