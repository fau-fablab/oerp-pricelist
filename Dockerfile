FROM ubuntu:24.04
RUN apt-get update && \
    apt-get -y --no-install-recommends install \
        python3-minimal python3-pip python3-setuptools python3-natsort python3-repoze.lru \
        git language-pack-de rsync
COPY requirements.txt .
RUN pip3 install --break-system-packages --upgrade -r requirements.txt
COPY . .
ENTRYPOINT [ "./run.sh" ]
