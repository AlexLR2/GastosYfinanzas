const express = require("express")
const app = express()
const router = require("./routers/router")

app.use("/api", router)

app.get('/ingenieria', (req, res) => {
  res.send('hola a todos World! </h1>')
})

app.listen(3000, () => {
  console.log(`Subido Al Navegador ${3000}`)
}) 