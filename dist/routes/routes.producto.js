"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _controller = require("../controllers/controller.producto");
var rutaProducto = (0, _express.Router)();
rutaProducto.get("/producto/:id", _controller.mostrarProducto);
rutaProducto.get("/producto", _controller.listarProducto);
rutaProducto.post("/producto", _controller.crearProducto);
rutaProducto.put("/producto", _controller.modificarProducto);
rutaProducto["delete"]("/producto", _controller.eliminarProducto);
var _default = exports["default"] = rutaProducto;