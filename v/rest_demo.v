module main

import vweb
import json

const (
	port = 8082
)

struct App {
	vweb.Context
mut:
	state shared State
}

struct State {
mut:
	cnt int
}

struct GreetingResponse {
	greeting  string
	name string
}

pub fn (app App) before_request() {
	println('[vweb] before_request: ${app.req.method} ${app.req.url}')
}

fn main() {
	println('rest demo')
	vweb.run(&App{}, port)
}

['/hello']
pub fn (mut app App) hello_endpoint() vweb.Result {
    response := &GreetingResponse{
	    greeting: 'Hello'
	    name: 'World'
    }
	return app.json(json.encode(response))
}
