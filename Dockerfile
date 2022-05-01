FROM ubuntu:18.04
RUN apt update && \
    apt -y --no-install-recommends install \
        python2.7-minimal python-pip python-setuptools python-natsort python-repoze.lru \
        git language-pack-de rsync && \
    python2 -m pip install oerplib
COPY . .
RUN python2 -m pip install --upgrade -r requirements.txt
ENTRYPOINT [ "./run.sh" ]