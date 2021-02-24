const express = require("express")
const bodyParser = require("body-parser")
const mysql = require("mysql")

const app = express()
const port = process.env.PORT || 3006

app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())

//mySQL
const pool = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  user: "root",
  password: "sifra1",
  database: "NBAScan"
})

// Get players
app.get("", (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err
    console.log(`connected as id ${connection.threadId}`)
    connection.query("SELECT * from players", (err, rows) => {
      if (!err) {
        res.send(rows)
      } else {
        console.log(err)
      }
    })
  })
})

app.listen(port, () => console.log(`Server activated on port ${port}`))
