package main

import (
    "net/http"

    "github.com/gin-gonic/gin"
)

type hello_response struct {
    Greeting string  `json:"greeting"`
    Name  string  `json:"name"`
}

func main() {
    router := gin.Default()
    router.GET("/hello", getGreeting)

    router.Run("0.0.0.0:8080")
}

func getGreeting(c *gin.Context) {
    var greeting = hello_response{Greeting: "Hello", Name: "World"}
    
    c.IndentedJSON(http.StatusOK, greeting)
}
