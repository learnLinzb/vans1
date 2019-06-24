SET NAMES UTF8;
DROP DATABASE IF EXISTS vans;
CREATE DATABASE vans CHARSET=UTF8;
USE vans;

/**用户信息**/
CREATE TABLE vans_user(
	uid  INT PRIMARY KEY AUTO_INCREMENT,
	uname varchar(32),
	phone varchar(32),
	upwd varchar(32)
);
INSERT INTO vans_user VALUES(NULL,"tt","13676440546","123456");
INSERT INTO vans_user VALUES(NULL,"dongdong","13956340546","123456");
INSERT INTO vans_user VALUES(NULL,"keke","13456567821","123456");
INSERT INTO vans_user VALUES(NULL,"nana","13676440546","123456");

/**收货地址信息**/
CREATE TABLE vans_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #收货人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县/区
  address VARCHAR(128),       #收货地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6)           #邮编
);

/**购物车条目**/
CREATE TABLE vans_shoppingcart_item(
  titlename  VARCHAR(32) PRIMARY KEY ,#商品名称
  color VARCHAR(16),      #颜色
  Shoe_size INT,    #鞋码
  count INT        #购买数量
 
);

/**用户订单**/
CREATE TABLE vans_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  Receiving_information VARCHAR(60),  #收货信息
  count INT,            #购买数量
  price INT #支付金额
);
/**男子类型**/
CREATE TABLE vans_laptop_family(
   sid INT PRIMARY KEY AUTO_INCREMENT,
   fname VARCHAR(32)
);
INSERT INTO vans_laptop_family VALUES(1,"黑色");
INSERT INTO vans_laptop_family VALUES(NULL,"灰色");
INSERT INTO vans_laptop_family VALUES(NULL,"白色");
INSERT INTO vans_laptop_family VALUES(NULL,"米黄色");
INSERT INTO vans_laptop_family VALUES(NULL,"黄色");
INSERT INTO vans_laptop_family VALUES(NULL,"卡其色");
INSERT INTO vans_laptop_family VALUES(NULL,"金色");
INSERT INTO vans_laptop_family VALUES(NULL,"银色");
INSERT INTO vans_laptop_family VALUES(NULL,"橙色");
INSERT INTO vans_laptop_family VALUES(NULL,"粉红色");
INSERT INTO vans_laptop_family VALUES(NULL,"红色");
INSERT INTO vans_laptop_family VALUES(NULL,"酒红色");
INSERT INTO vans_laptop_family VALUES(NULL,"咖啡色");
INSERT INTO vans_laptop_family VALUES(NULL,"蓝色");
INSERT INTO vans_laptop_family VALUES(NULL,"深蓝色");
INSERT INTO vans_laptop_family VALUES(NULL,"浅蓝色");
INSERT INTO vans_laptop_family VALUES(NULL,"紫色");
INSERT INTO vans_laptop_family VALUES(NULL,"绿色");
INSERT INTO vans_laptop_family VALUES(NULL,"肉色");
INSERT INTO vans_laptop_family VALUES(NULL,"其他");
INSERT INTO vans_laptop_family VALUES(NULL,"双色搭配");
INSERT INTO vans_laptop_family VALUES(NULL,"花色");
INSERT INTO vans_laptop_family VALUES(NULL,"棕色");
INSERT INTO vans_laptop_family VALUES(NULL,"土黄色");
/**男士鞋服**/
CREATE TABLE vans_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  spec VARCHAR(64),           #规格/颜色
  shoe_size1 INT ,              #鞋码
  shoe_size2 INT ,              #鞋码
  shoe_size3 INT ,              #鞋码
  shoe_size4 INT ,             #鞋码
  shoe_size5 INT ,              #鞋码
  shoe_size6 INT ,              #鞋码
  shoe_size7 INT ,              #鞋码
  shoe_size8 INT ,              #鞋码
  shoe_size9 INT ,              #鞋码
  shoe_size10 INT              #鞋码			
);
/**黑色**/
INSERT INTO vans_laptop VALUES(1,1,"OLD SKOOL PRO 男女同款滑板鞋",595,"黑色/蓝色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(2,1,"ERA PRO 男女同款滑板鞋",495,"黑色/蓝色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(3,1,"COMFYCUSH ERA 男女同款板鞋",565,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(4,1,"ULTRARANGE RAPIDWELD 男女同款帆布鞋",635,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(5,1,"ERA 95 DX 男女同款帆布鞋",535,"黑色/粉色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(6,1,"Old Skool 男女同款帆布鞋",695,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(7,1,"Vans(范斯)GILBERT CROCKETT 2 PRO 男款板鞋休闲鞋滑板鞋",635,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(8,1,"Vans(范斯)TH AUTHENTIC ONE PIECE LX 男女同款板鞋休闲鞋",950,"黑色/蓝色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(9,1,"SK8-Hi男女同款板鞋",735,"黑色/彩色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(10,1,"Era 男女同款帆布鞋",495,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(11,1,"ULTRARANGE TRI-LOCK 男款凉鞋",465,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(12,1,"ULTRACUSH SLIDE-ON 男款拖鞋",395,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(13,1,"ULTRACUSH SEA ESTA 男款人字拖",365,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(14,1,"BOLD NI 男女同款板鞋",565,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(15,1,"STYLE 29 男女同款帆布鞋",565,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(16,1,"SLIP-ON CAP 男女同款板鞋",635,"黑白棋盘格",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(17,1,"TH DERBY V LUG LX 男女同款休闲鞋",980,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(18,1,"SK8-MID 男女同款板鞋",635,"黑色/紫色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(19,1,"Vans(范斯）Classic Slip-On Bricolage LX 男女同款帆布鞋板鞋",650,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(20,1,"Vans(范斯)OG CLASSIC SLIP-ON LX 男女同款帆布鞋板鞋黑色",555,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(21,1,"Vans(范斯)OG SK8-HI LX 男女同款高帮帆布鞋板鞋",980,"彩色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(22,1,"Vans(范斯)OG CLASSIC SLIP-ON LX 男女同款帆布鞋板鞋",750,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(23,1,"Vans(范斯) COMFYCUSH OLD SKOOL 男女同款板鞋",635,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(24,1,"Vans(范斯)SK8-MID 男女同款板鞋",635,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(25,1,"STYLE 36 DECON SF 男女同款休闲鞋",565,"黑色/彩色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(26,1,"STYLE 36 DECON SF 男女同款休闲鞋",565,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(27,1,"Vans(范斯) CHIMA PRO 2 男款职业滑板鞋",635,"黑色/白色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(28,1,"Vans(范斯) ERA 男女同款帆布鞋板鞋 黑色",495,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(29,1,"ERA 男女同款帆布鞋",495,"黑色",39,40,40.5,41,42,42.5,43,44,44.5,45);
INSERT INTO vans_laptop VALUES(30,1,"ERA男女款帆布鞋",495,"灰色/蓝色",39,40,40.5,41,42,42.5,43,44,44.5,45);


/**图片**/

CREATE TABLE vans_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,      
  pic VARCHAR(128)           
);
INSERT INTO vans_laptop_pic VALUES(NULL, 1, 'img/manpic/1.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 2, 'img/manpic/2.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 3, 'img/manpic/3.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 4, 'img/manpic/4.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 5, 'img/manpic/5.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 6, 'img/manpic/6.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 7, 'img/manpic/7.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 8, 'img/manpic/8.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 9, 'img/manpic/9.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 10, 'img/manpic/10.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 11, 'img/manpic/11.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 12, 'img/manpic/12.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 13, 'img/manpic/13.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 14, 'img/manpic/14.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 15, 'img/manpic/15.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 16, 'img/manpic/16.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 17, 'img/manpic/17.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 18, 'img/manpic/18.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 19, 'img/manpic/19.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 20, 'img/manpic/20.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 21, 'img/manpic/21.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 22, 'img/manpic/22.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 23, 'img/manpic/23.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 24, 'img/manpic/24.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 25, 'img/manpic/25.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 26, 'img/manpic/26.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 27, 'img/manpic/27.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 28, 'img/manpic/28.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 29, 'img/manpic/29.jpg');
INSERT INTO vans_laptop_pic VALUES(NULL, 30, 'img/manpic/30.jpg');


