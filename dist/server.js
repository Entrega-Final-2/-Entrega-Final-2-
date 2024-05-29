"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = _interopRequireDefault(require("express"));
var _routes = _interopRequireDefault(require("./routes/routes.producto"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
var server = (0, _express["default"])();
server.use(_express["default"].json());
server.use("/api", _routes["default"]);
var _default = exports["default"] = server;