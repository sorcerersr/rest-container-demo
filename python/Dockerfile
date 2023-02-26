FROM python:alpine3.17
COPY rest_demo.py /opt/app/rest_demo.py
COPY requirements.txt /opt/app/requirements.txt
RUN apk add --no-cache dumb-init && \
    pip install -r /opt/app/requirements.txt && \
    addgroup --system pyuser && adduser -S -s /bin/false -G pyuser pyuser
WORKDIR /opt/app
RUN chown -R pyuser:pyuser /opt/app
USER pyuser
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["python", "/opt/app/rest_demo.py"]


