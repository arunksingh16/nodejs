FROM ubuntu:18.04
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_13.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
COPY . /src
RUN cd /src; npm install
EXPOSE  3000
CMD ["node", "/src/index.js"]
