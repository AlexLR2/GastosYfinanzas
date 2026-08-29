const express = require("express")
const router = express.Router()
const controller = require("../controller/gastos.controller")

router.get("/transacciones", controller.consultarGastos)

module.exports = router
