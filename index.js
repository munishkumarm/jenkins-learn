const express = require("express")
const app = express()

app.get("/", (req, res) => {
    res.send("Hello World")
})

app.listen(3500, () => {
    console.log('App running on Port : 3500')
})
