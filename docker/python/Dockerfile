FROM python:alpine

RUN apk --no-cache add --virtual .builddeps tzdata gcc libc-dev libffi-dev openssl-dev
RUN apk --no-cache add openssh-client && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install --upgrade ansible

RUN apk del .builddeps

RUN adduser -D ansible && \
    echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    echo 'ansible:ansible' | chpasswd && \
    mkdir /key && chown ansible:nobody /key  && \
    mkdir /home/ansible/.ssh && \
    chown ansible:nobody /home/ansible/.ssh
