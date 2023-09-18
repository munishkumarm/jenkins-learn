const express = require("express")
const app = express()

app.get("/", (req, res) => {
    res.send("Hello World")
})

app.get("/:name", (req, res) => {
    res.send("Hello World " + req.params.name)
})

app.listen(3500, () => {
    console.log('App running on Port : 3500')
})
