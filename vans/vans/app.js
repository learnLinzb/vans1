//使用express构建web服务器
const express = require('express');
const bodyParser = require('body-parser');
/*引入路由模块
const index=require("./routes/index");
const details=require("./routes/details")*/

const cors=require("cors");
var app = express();
var server = app.listen(3000);
app.use(cors({
  origin:["http://127.0.0.1:5500","http://127.0.0.1:5501"]
}))
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('public'));
/*使用路由器来管理路由
app.use("/index",index);
app.use("/details",details);*/