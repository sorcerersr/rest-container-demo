# rest-container-demo

## Introduction

A small comparison of how to implement a RESTful service using some popular/common languages and how well they can be containerized.

The services itself won't be doing anything fancy and are not much more than simple "Hello World!" projects. So this is not going to be a scientific or in depth comparison. In fact it is just a personal experiment with the nice side effect to get some starter templates for possible further projects.

## Testcase

All services implement a simple GET endpoint on path /hello that returns a JSON response:

```json
{"greeting":"Hello","name":"World"}
```
This JSON is deserialized from a simple objekt to have the mechanism of serializing/deserializing included for the comparison.

## Current services

* Java with Spring Boot
* Python with CherryPy
* Go with Gin
* Rust with actix-web
* V with builtin vweb module
* Node.js with express.js


## Comparison

### Image size

Image size from small to large

| # | Service                       | Size          |
|---| ----------------------------- | ------------- |
| 1 | V with builtin vweb module    | 11,2 MB       |
| 2 | Go with Gin                   | 14,6 MB       |
| 2 | Rust with actix-web           | 17,4 MB       |
| 2 | Java with Spring Boot         | 78,2 MB       |
| 2 | Python with CherryPy          | 87,2 MB       |
| 2 | Node.js with express.js       | 185  MB       |
