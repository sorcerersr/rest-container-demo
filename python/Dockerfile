FROM python:alpine3.17
RUN pip install cherrypy && mkdir /opt/app
COPY rest_demo.py /opt/app/rest_demo.py
WORKDIR /opt/app
#RUN chown -R javauser:javauser /opt/app
#USER javauser
#ENTRYPOINT ["/usr/bin/dumb-init", "--"]
#CMD ["java", "-jar", "/opt/app/java-rest-demo.jar"]
CMD ["python", "/opt/app/rest_demo.py"]


