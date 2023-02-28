use actix_web::{get, web, App, HttpServer, Responder, Result};
use serde::Serialize;

#[derive(Serialize)]
struct HelloResponse {
    greeting: String,
    name: String,
}

#[get("/hello")]
async fn hello() -> Result<impl Responder> {
    let response = HelloResponse {
        greeting: "Hello".to_owned(),
        name: "World".to_string(),
    };
    Ok(web::Json(response))
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(hello))
        .bind(("0.0.0.0", 8080))?
        .run()
        .await
}
