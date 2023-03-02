const express = require('express')
const app = express()
const port = 8080

const greeting_response = {
    greeting: "Hello",
    name: "World",
}

app.get('/hello', (req, res) => {
  res.json(greeting_response)
})

app.listen(port, () => {
  console.log(`listening on port ${port}`)
})