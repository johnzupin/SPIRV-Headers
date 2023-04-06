FROM ubuntu:22.04
RUN  apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y \
    build-essential cmake git git-buildpackage debhelper npm
COPY . .
RUN npm install --production
ENTRYPOINT ["node", "/dist/index.js"]