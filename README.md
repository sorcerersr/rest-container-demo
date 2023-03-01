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

