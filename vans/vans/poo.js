const mysql=require("mysql");
var pool=mysql.createPool({
	host:'127.0.0.1',
	use:'root',
	password:'',
	database:'vans',
	connectionLimit:10
});
	module.exports=pool;