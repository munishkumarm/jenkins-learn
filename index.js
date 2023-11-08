const express = require("express")
const app = express()
app.use(express.static("assets"))
app.set("view engine", "ejs")

app.get("/", (req, res) => {
    // res.send("Hello World")
  res.render("todo")
})

app.get("/:name", (req, res) => {
    res.send("<h1>Test</h1> <br> Hello World " + req.params.name)
})

app.listen(3500, () => {
    console.log('App running on Port : 3500')
})
