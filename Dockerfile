
FROM python:3.14.0a1-alpine

RUN pip install requests

#RUN apk add curl \
 #   && curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin \
  #  && trivy filesystem --exit-code 1 --no-progress /

COPY hello_there.py /

CMD ["python", "hello_there.py"]