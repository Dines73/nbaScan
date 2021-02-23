const express = require("express")
const bodyParser = require("body-parser")
const mysql = require("mysql")

const app = express()
const port = process.env.PORT || 3006

app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())

//mySQL

app.listen(port, () => console.log(`Server activated on port ${port}`))
