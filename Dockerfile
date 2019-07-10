FROM alpine:latest
RUN apk update
RUN apk add py-pip curl
RUN apk add openssh
RUN pip install flask
COPY promclient.py /
EXPOSE 22
CMD ["python","/promclient.py"]
