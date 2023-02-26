import cherrypy
import json

class HelloResponse(object):
    def __init__(self):
        self.greeting = 'Hello'
        self.name = 'World'


class HelloWorld(object):
    
    @cherrypy.expose
    @cherrypy.tools.json_out()
    def hello(self):
        response = HelloResponse()
        return response.__dict__

cherrypy.quickstart(HelloWorld(), '/', {'global': {'server.socket_host':'0.0.0.0','server.socket_port': 8080}})