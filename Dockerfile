FROM alpine:latest

RUN  apk add python3 git gcc python3-dev libc6-compat build-base linux-headers openssl-dev

RUN python3 -m venv venv

RUN /venv/bin/pip install git+https://github.com/jawshoeadan/JitStreamer#egg=JitStreamer

ENV PATH="/venv/bin:$PATH"


EXPOSE 49151
EXPOSE 8080

CMD ["JitStreamer"]
