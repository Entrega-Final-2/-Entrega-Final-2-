"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _promise = require("mysql2/promise");
var _dotenv = require("dotenv");
(0, _dotenv.config)();
var pool = (0, _promise.createPool)({
  host: process.env.MYSQL_HOST,
  port: process.env.MYSQL_PORT,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_D
});
var _default = exports["default"] = pool;