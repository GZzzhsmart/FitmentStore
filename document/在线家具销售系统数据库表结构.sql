commit;
--1.城市表
select * from city
--2.省份表
select * from province
--3.管理员表
select * from manager;
--4.用户表
select * from users;
update users set ledou=5 where userid=1
--5.新闻资讯表
select * from newmsg;
--6.银行表
select * from bank;
--7.店铺类别表
select * from storegread;
--8.店铺表
select * from store;
--9.优惠券活动明细表
select * from ExchangeRecord;
--10.家具表
select * from home;
select * from users;

--11.购买家具表
select * from payrecord;
--12.家具配件表
select * from homepart;
--13.提现表
select * from cashrecord;
--14.优惠券表
select * from ExchangeCode;
--15.用户评价表
select * from UserHomeEval
--16.充值记录表
select * from moneyrecord;
--17.平台收入表
select * from pingtai;
--18.购物车表
select * from shoppingcar;
--19.在线留言板
select * from forum;
--20.订单表
select * from dingdan;
--21.收货 地址表
select * from address;
--22.家具收藏表
select * from collection;
------------城市表
create table city(
  cityid int primary key not null,
  cityName varchar(100) unique not null,
  provinceid int references province(provinceid) 
)

--省份表
create table province(
  provinceid int primary key not null,
  provinceName varchar(100) not null unique
  
)

select * from province order by provinceid;
select count(*) from province p ,city c where p.provinceid=c.provinceid;

select * from (select a.* ,rownum rn from (select * from province)a)where rn between 1 and 34;

--创建序列
create sequence ODS_USER  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 9999999999999999  
NOCYCLE 
CACHE 30;  

insert into province select * from jspproject.province

select * from province where provincename='江西省'
insert into province values(1,'北京');

insert into city values(ODS_USER.nextval,'石景山区',1);
insert into city values(ODS_USER.nextval,'海淀区',1);
insert into city values(ODS_USER.nextval,'门头沟区',1);
insert into city values(ODS_USER.nextval,'房山区',1);
insert into city values(ODS_USER.nextval,'通州区',1);
insert into city values(ODS_USER.nextval,'顺义区',1);
insert into city values(ODS_USER.nextval,'东城区',1);
insert into city values(ODS_USER.nextval,'西城区',1);
insert into city values(ODS_USER.nextval,'崇文区',1);
insert into city values(ODS_USER.nextval,'宣武区',1);
insert into city values(ODS_USER.nextval,'朝阳区',1);
insert into city values(ODS_USER.nextval,'丰台区',1);
insert into city values(ODS_USER.nextval,'昌平区',1);
insert into city values(ODS_USER.nextval,'大兴区',1);
insert into city values(ODS_USER.nextval,'平谷区',1);
insert into city values(ODS_USER.nextval,'怀柔区',1);

insert into province values(2,'天津')

insert into city values(ODS_USER.nextval,'东丽区',2);
insert into city values(ODS_USER.nextval,'西青区',2);
insert into city values(ODS_USER.nextval,'津南区',2);
insert into city values(ODS_USER.nextval,'北辰区',2);
insert into city values(ODS_USER.nextval,'武清区',2);
insert into city values(ODS_USER.nextval,'宝坻区',2);
insert into city values(ODS_USER.nextval,'和平区',2);
insert into city values(ODS_USER.nextval,'河东区',2);
insert into city values(ODS_USER.nextval,'河西区',2);
insert into city values(ODS_USER.nextval,'南开区',2);
insert into city values(ODS_USER.nextval,'河北区',2);
insert into city values(ODS_USER.nextval,'红桥区',2);
insert into city values(ODS_USER.nextval,'塘沽区',2);
insert into city values(ODS_USER.nextval,'汉沽区',2);
insert into city values(ODS_USER.nextval,'大港区',2);
--------------------------------------
select * from city;

insert into province values(3,'河北')

insert into city values(ODS_USER.nextval,'石家庄市',3);
insert into city values(ODS_USER.nextval,'邯郸市',3);
insert into city values(ODS_USER.nextval,'唐山市',3);
insert into city values(ODS_USER.nextval,'秦皇岛',3);
insert into city values(ODS_USER.nextval,'邢台市',3);
insert into city values(ODS_USER.nextval,'保定市',3);
insert into city values(ODS_USER.nextval,'张家口',3);
insert into city values(ODS_USER.nextval,'承德市',3);
insert into city values(ODS_USER.nextval,'沧州市',3);
insert into city values(ODS_USER.nextval,'衡水市',3);
insert into city values(ODS_USER.nextval,'廊坊市',3);
-------------------------------------
insert into province values(4,'山西省')

insert into city values(ODS_USER.nextval,'大同市',4);
insert into city values(ODS_USER.nextval,'太原市',4);
insert into city values(ODS_USER.nextval,'阳泉市',4);
insert into city values(ODS_USER.nextval,'长治市',4);
insert into city values(ODS_USER.nextval,'晋城市',4);
insert into city values(ODS_USER.nextval,'朔州市',4);
insert into city values(ODS_USER.nextval,'忻州市',4);
insert into city values(ODS_USER.nextval,'吕梁市',4);
insert into city values(ODS_USER.nextval,'晋中市',4);
insert into city values(ODS_USER.nextval,'临汾市',4);
insert into city values(ODS_USER.nextval,'运城市',4);
-----------------------------------
insert into province values(5,'内蒙古自治区')

insert into city values(ODS_USER.nextval,'呼和浩特市',5);
insert into city values(ODS_USER.nextval,'包头市',5);
insert into city values(ODS_USER.nextval,'乌海市',5);
insert into city values(ODS_USER.nextval,'赤峰市',5);
insert into city values(ODS_USER.nextval,'呼伦贝尔市',5);
insert into city values(ODS_USER.nextval,'兴安盟',5);
insert into city values(ODS_USER.nextval,'通辽市',5);
insert into city values(ODS_USER.nextval,'锡林郭勒盟',5);
insert into city values(ODS_USER.nextval,'乌兰察布盟',5);
insert into city values(ODS_USER.nextval,'伊克昭盟',5);
insert into city values(ODS_USER.nextval,'巴彦淖尔盟',5);
insert into city values(ODS_USER.nextval,'阿拉善盟',5);

------------------------------------
insert into province values(6,'辽宁省')


insert into city values(ODS_USER.nextval,'沈阳市',6);
insert into city values(ODS_USER.nextval,'大连市',6);
insert into city values(ODS_USER.nextval,'鞍山市',6);
insert into city values(ODS_USER.nextval,'抚顺市',6);
insert into city values(ODS_USER.nextval,'本溪市',6);
insert into city values(ODS_USER.nextval,'丹东市',6);
insert into city values(ODS_USER.nextval,'锦州市',6);
insert into city values(ODS_USER.nextval,'营口市',6);
insert into city values(ODS_USER.nextval,'阜新市',6);
insert into city values(ODS_USER.nextval,'辽阳市',6);
insert into city values(ODS_USER.nextval,'盘锦市',6);
insert into city values(ODS_USER.nextval,'铁岭市',6);
insert into city values(ODS_USER.nextval,'朝阳市',6);
insert into city values(ODS_USER.nextval,'葫芦岛',6);
-----------------------------------
insert into province values(7,'吉林省')

insert into city values(ODS_USER.nextval,'四平市',7);
insert into city values(ODS_USER.nextval,'长春市',7);
insert into city values(ODS_USER.nextval,'辽源市',7);    
insert into city values(ODS_USER.nextval,'通化市',7);    
insert into city values(ODS_USER.nextval,'松原市',7);   
insert into city values(ODS_USER.nextval,'白城市',7);  
insert into city values(ODS_USER.nextval,'延边朝鲜族自治州',7);   
------------------------------------------
insert into province values(8,'黑龙江省');  

insert into city values(ODS_USER.nextval,'哈尔滨市',8); 
insert into city values(ODS_USER.nextval,'齐齐哈尔市',8); 
insert into city values(ODS_USER.nextval,'鹤岗市',8); 
insert into city values(ODS_USER.nextval,'双鸭山市',8); 
insert into city values(ODS_USER.nextval,'鸡西市',8); 
insert into city values(ODS_USER.nextval,'伊春市',8); 
insert into city values(ODS_USER.nextval,'佳木斯市',8); 
insert into city values(ODS_USER.nextval,'七台河市',8); 
insert into city values(ODS_USER.nextval,'绥化市',8);
insert into city values(ODS_USER.nextval,'大兴安岭市',8);
-------------------------------------------
insert into province values(9,'上海')  

insert into city values(ODS_USER.nextval,'黄浦区',9); 
insert into city values(ODS_USER.nextval,'卢湾区',9); 
insert into city values(ODS_USER.nextval,'徐汇区',9); 
insert into city values(ODS_USER.nextval,'长宁区',9); 
insert into city values(ODS_USER.nextval,'静安区',9); 
insert into city values(ODS_USER.nextval,'普陀区',9);
insert into city values(ODS_USER.nextval,'闸北区',9) ;
insert into city values(ODS_USER.nextval,'虹口区',9); 
insert into city values(ODS_USER.nextval,'杨浦区',9) ;
insert into city values(ODS_USER.nextval,'宝山区',9) ;
insert into city values(ODS_USER.nextval,'闵行区',9) ;
insert into city values(ODS_USER.nextval,'嘉定区',9) ;
insert into city values(ODS_USER.nextval,'松江区',9) ;
insert into city values(ODS_USER.nextval,'金山区',9) ;
insert into city values(ODS_USER.nextval,'青浦区',9) ;
insert into city values(ODS_USER.nextval,'南汇区',9) ;
insert into city values(ODS_USER.nextval,'奉贤区',9) ;
insert into city values(ODS_USER.nextval,'浦东新区',9);   
--------------------------------------------     
insert into province values(10,'江苏省')  

insert into city values(ODS_USER.nextval,'南京市',10);
insert into city values(ODS_USER.nextval,'苏州市',10);
insert into city values(ODS_USER.nextval,'无锡市',10);
insert into city values(ODS_USER.nextval,'常州市',10);
insert into city values(ODS_USER.nextval,'镇江市',10);
insert into city values(ODS_USER.nextval,'南通市',10);
insert into city values(ODS_USER.nextval,'泰州市',10);
insert into city values(ODS_USER.nextval,'扬州市',10);
insert into city values(ODS_USER.nextval,'盐城市',10);
insert into city values(ODS_USER.nextval,'连云港市',10);
insert into city values(ODS_USER.nextval,'徐州市',10);
insert into city values(ODS_USER.nextval,'淮安市',10);
insert into city values(ODS_USER.nextval,'宿迁市',10);
----------------------------------------
insert into province values(11,'浙江省');  

insert into city values(ODS_USER.nextval,'杭州市',11);
insert into city values(ODS_USER.nextval,'宁波市',11);
insert into city values(ODS_USER.nextval,'温州市',11);
insert into city values(ODS_USER.nextval,'嘉兴市',11);
insert into city values(ODS_USER.nextval,'湖州市',11);
insert into city values(ODS_USER.nextval,'绍兴市',11);
insert into city values(ODS_USER.nextval,'金华市',11);
insert into city values(ODS_USER.nextval,'衢州市',11);
insert into city values(ODS_USER.nextval,'舟山市',11);
insert into city values(ODS_USER.nextval,'台州市',11);
insert into city values(ODS_USER.nextval,'丽水市',11);
----------------------------------------
insert into province values(12,'安徽省')  

insert into city values(ODS_USER.nextval,'合肥市',12);
insert into city values(ODS_USER.nextval,'芜湖市',12);
insert into city values(ODS_USER.nextval,'蚌埠市',12); 
insert into city values(ODS_USER.nextval,'淮南市',12);
insert into city values(ODS_USER.nextval,'马鞍山',12);
insert into city values(ODS_USER.nextval,'淮北市',12) ;
insert into city values(ODS_USER.nextval,'铜陵市',12);
insert into city values(ODS_USER.nextval,'安庆市',12);
insert into city values(ODS_USER.nextval,'黄山市',12);  
insert into city values(ODS_USER.nextval,'滁州市',12);
insert into city values(ODS_USER.nextval,'阜阳山',12);
insert into city values(ODS_USER.nextval,'宿州市',12); 
insert into city values(ODS_USER.nextval,'宣城市',12);
insert into city values(ODS_USER.nextval,'池州市',12);   
insert into city values(ODS_USER.nextval,'亳州市',12);
insert into city values(ODS_USER.nextval,'六安山',12);
insert into city values(ODS_USER.nextval,'巢湖市',12); 
----------------------------------------
insert into province values(13,'福建省')  

insert into city values(ODS_USER.nextval,'福州市',13);
insert into city values(ODS_USER.nextval,'厦门市',13);
insert into city values(ODS_USER.nextval,'莆田市',13);
insert into city values(ODS_USER.nextval,'三明市',13);
insert into city values(ODS_USER.nextval,'泉州市',13);
insert into city values(ODS_USER.nextval,'漳州市',13);
insert into city values(ODS_USER.nextval,'南平市',13);
insert into city values(ODS_USER.nextval,'龙岩市',13);
insert into city values(ODS_USER.nextval,'宁德市',13);
----------------------------------------
insert into province values(14,'江西省')  

insert into city values(ODS_USER.nextval,'南昌市',14);
insert into city values(ODS_USER.nextval,'景德镇',14);
insert into city values(ODS_USER.nextval,'萍乡市',14);
insert into city values(ODS_USER.nextval,'九江市',14);
insert into city values(ODS_USER.nextval,'鹰潭市',14);
insert into city values(ODS_USER.nextval,'赣州市',14);
insert into city values(ODS_USER.nextval,'吉安市',14);
insert into city values(ODS_USER.nextval,'宜春市',14);
insert into city values(ODS_USER.nextval,'抚州市',14);
insert into city values(ODS_USER.nextval,'上饶市',14);
----------------------------------------
insert into province values(15,'山东省');  

insert into city values(ODS_USER.nextval,'济南市',15);
insert into city values(ODS_USER.nextval,'青岛市',15) ;  
insert into city values(ODS_USER.nextval,'淄博市',15);   
insert into city values(ODS_USER.nextval,'枣庄市',15) ;  
insert into city values(ODS_USER.nextval,'东营市',15) ;  
insert into city values(ODS_USER.nextval,'烟台市',15);   
insert into city values(ODS_USER.nextval,'潍坊市',15);   
insert into city values(ODS_USER.nextval,'济宁市',15);   
insert into city values(ODS_USER.nextval,'泰安市',15);   
insert into city values(ODS_USER.nextval,'威海市',15);   
insert into city values(ODS_USER.nextval,'日照市',15);   
insert into city values(ODS_USER.nextval,'莱芜市',15);   
insert into city values(ODS_USER.nextval,'临沂市',15);   
insert into city values(ODS_USER.nextval,'德州市',15);   
insert into city values(ODS_USER.nextval,'聊城市',15);   
insert into city values(ODS_USER.nextval,'滨州市',15);      
insert into city values(ODS_USER.nextval,'菏泽市',15);
----------------------------------------
insert into province values(16,'河南省')  

insert into city values(ODS_USER.nextval,'郑州市',16);       
insert into city values(ODS_USER.nextval,'开封市',16);    
insert into city values(ODS_USER.nextval,'洛阳市',16);    
insert into city values(ODS_USER.nextval,'平顶山',16);    
insert into city values(ODS_USER.nextval,'安阳市',16);    
insert into city values(ODS_USER.nextval,'鹤壁市',16) ;   
insert into city values(ODS_USER.nextval,'新乡市',16);    
insert into city values(ODS_USER.nextval,'焦作市',16);    
insert into city values(ODS_USER.nextval,'濮阳市',16);    
insert into city values(ODS_USER.nextval,'许昌市',16) ;  
insert into city values(ODS_USER.nextval,'漯河市',16) ;   
insert into city values(ODS_USER.nextval,'三门峡',16)  ;  
insert into city values(ODS_USER.nextval,'南阳市',16)  ; 
insert into city values(ODS_USER.nextval,'商丘市',16)  ;  
insert into city values(ODS_USER.nextval,'信阳市',16) ;   
insert into city values(ODS_USER.nextval,'周口店',16) ;   
----------------------------------------
insert into province values(17,'湖北省') ; 

insert into city values(ODS_USER.nextval,'武汉市',17)  ; 
insert into city values(ODS_USER.nextval,'黄石市',17) ;  
insert into city values(ODS_USER.nextval,'十堰市',17) ; 
insert into city values(ODS_USER.nextval,'荆州市',17)  ; 
insert into city values(ODS_USER.nextval,'宜昌市',17)  ; 
insert into city values(ODS_USER.nextval,'襄樊市',17)  ; 
insert into city values(ODS_USER.nextval,'鄂州市',17)  ; 
insert into city values(ODS_USER.nextval,'荆门市',17)   ; 
insert into city values(ODS_USER.nextval,'孝感市',17)  ;  
insert into city values(ODS_USER.nextval,'黄冈市',17)  ;  
insert into city values(ODS_USER.nextval,'咸宁市',17) ;   
insert into city values(ODS_USER.nextval,'随州市',17) ;   
insert into city values(ODS_USER.nextval,'恩施市',17) ;   
insert into city values(ODS_USER.nextval,'仙桃市',17) ;   
insert into city values(ODS_USER.nextval,'天门市',17) ;   
insert into city values(ODS_USER.nextval,'潜江市',17) ;  
insert into city values(ODS_USER.nextval,'神农架林区',17);

----------------------------------------
insert into province values(18,'湖南省')  

insert into city values(ODS_USER.nextval,'长沙市',18);     
insert into city values(ODS_USER.nextval,'株洲市',18);      
insert into city values(ODS_USER.nextval,'湘潭市',18);    
insert into city values(ODS_USER.nextval,'衡阳市',18);    
insert into city values(ODS_USER.nextval,'邵阳市',18) ;  
insert into city values(ODS_USER.nextval,'岳阳市',18);    
insert into city values(ODS_USER.nextval,'常德市',18);
insert into city values(ODS_USER.nextval,'张家市',18);
insert into city values(ODS_USER.nextval,'益阳市',18);
insert into city values(ODS_USER.nextval,'郴州市',18);
insert into city values(ODS_USER.nextval,'永州市',18);
insert into city values(ODS_USER.nextval,'怀化市',18);
insert into city values(ODS_USER.nextval,'娄底市',18);
insert into city values(ODS_USER.nextval,'湘西市',18);

----------------------------------------
insert into province values(19,'广东省');  

insert into city values(ODS_USER.nextval,'广州市',19) ;     
insert into city values(ODS_USER.nextval,'深圳市',19); 
insert into city values(ODS_USER.nextval,'东莞市',19);     
insert into city values(ODS_USER.nextval,'潮州市',19) ;     
insert into city values(ODS_USER.nextval,'揭阳市',19) ;
insert into city values(ODS_USER.nextval,'云浮市',19) ; 
insert into city values(ODS_USER.nextval,'珠海市',19) ;    
insert into city values(ODS_USER.nextval,'汕头市',19)  ;    
insert into city values(ODS_USER.nextval,'韶关市',19) ;
insert into city values(ODS_USER.nextval,'佛山市',19) ;
insert into city values(ODS_USER.nextval,'江门市',19)  ;   
insert into city values(ODS_USER.nextval,'湛江市',19)  ;    
insert into city values(ODS_USER.nextval,'茂名市',19) ;
insert into city values(ODS_USER.nextval,'肇庆市',19)  ; 
insert into city values(ODS_USER.nextval,'惠州市',19)  ;   
insert into city values(ODS_USER.nextval,'梅州市',19)  ;    
insert into city values(ODS_USER.nextval,'汕尾市',19) ;
insert into city values(ODS_USER.nextval,'河源市',19)  ; 
insert into city values(ODS_USER.nextval,'阳江市',19) ;
insert into city values(ODS_USER.nextval,'清远市',19)  ;  

----------------------------------------
insert into province values(20,'广西省')  

insert into city values(ODS_USER.nextval,'南宁市',20);
insert into city values(ODS_USER.nextval,'柳州市',20);
insert into city values(ODS_USER.nextval,'桂林市',20);
insert into city values(ODS_USER.nextval,'梧州市',20);
insert into city values(ODS_USER.nextval,'北海市',20);
insert into city values(ODS_USER.nextval,'防城市',20);
insert into city values(ODS_USER.nextval,'钦州市',20);
insert into city values(ODS_USER.nextval,'贵港市',20);
insert into city values(ODS_USER.nextval,'玉林市',20);
insert into city values(ODS_USER.nextval,'百色市',20);
insert into city values(ODS_USER.nextval,'贺州市',20);
insert into city values(ODS_USER.nextval,'河池市',20);
insert into city values(ODS_USER.nextval,'来宾市',20);
insert into city values(ODS_USER.nextval,'崇左市',20);

----------------------------------------
insert into province values(21,'海南省')  

insert into city values(ODS_USER.nextval,'海口市',21);
insert into city values(ODS_USER.nextval,'三亚市',21);
insert into city values(ODS_USER.nextval,'五指山',21);    
insert into city values(ODS_USER.nextval,'琼海市',21) ;  
insert into city values(ODS_USER.nextval,'儋州市',21) ;   
insert into city values(ODS_USER.nextval,'文昌市',21);
insert into city values(ODS_USER.nextval,'万宁市',21);
insert into city values(ODS_USER.nextval,'东方市',21);

----------------------------------------
insert into province values(22,'重庆')  

insert into city values(ODS_USER.nextval,'渝中区',22);
insert into city values(ODS_USER.nextval,'大渡口区',22);
insert into city values(ODS_USER.nextval,'江北区',22);
insert into city values(ODS_USER.nextval,'南岸区',22);
insert into city values(ODS_USER.nextval,'北碚区',22);
insert into city values(ODS_USER.nextval,'渝北区',22);
insert into city values(ODS_USER.nextval,'巴南区',22);
insert into city values(ODS_USER.nextval,'长寿区',22);
insert into city values(ODS_USER.nextval,'双桥区',22);
insert into city values(ODS_USER.nextval,'沙坪坝区',22);
insert into city values(ODS_USER.nextval,'万盛区',22);
insert into city values(ODS_USER.nextval,'万州区',22);
insert into city values(ODS_USER.nextval,'涪陵区',22);
insert into city values(ODS_USER.nextval,'黔江区',22);
insert into city values(ODS_USER.nextval,'永川区',22);
insert into city values(ODS_USER.nextval,'合川区',22);
insert into city values(ODS_USER.nextval,'江津区',22);
insert into city values(ODS_USER.nextval,'九龙坡区',22);
insert into city values(ODS_USER.nextval,'南川区',22)  ; 
----------------------------------------
insert into province values(23,'四川省')  

insert into city values(ODS_USER.nextval,'成都市',23);
insert into city values(ODS_USER.nextval,'自贡市',23);
insert into city values(ODS_USER.nextval,'攀枝市',23);
insert into city values(ODS_USER.nextval,'泸州市',23) ;  
insert into city values(ODS_USER.nextval,'德阳市',23);
insert into city values(ODS_USER.nextval,'绵阳市',23);
insert into city values(ODS_USER.nextval,'广元市',23);
insert into city values(ODS_USER.nextval,'遂宁市',23) ;  
insert into city values(ODS_USER.nextval,'乐山市',23) ;  
insert into city values(ODS_USER.nextval,'南充市',23);
insert into city values(ODS_USER.nextval,'眉山市',23);
insert into city values(ODS_USER.nextval,'宜宾市',23);
insert into city values(ODS_USER.nextval,'广安市',23) ;
insert into city values(ODS_USER.nextval,'达州市',23)  ; 
insert into city values(ODS_USER.nextval,'雅安市',23);
insert into city values(ODS_USER.nextval,'巴中市',23);
insert into city values(ODS_USER.nextval,'资阳市',23);
insert into city values(ODS_USER.nextval,'阿坝藏族羌族自治州',23);
insert into city values(ODS_USER.nextval,'甘孜藏族自治州',23);
insert into city values(ODS_USER.nextval,'凉山彝族自治州',23) ;

----------------------------------------
insert into province values(24,'贵州省');  

insert into city values(ODS_USER.nextval,'六盘山',24);  
insert into city values(ODS_USER.nextval,'贵阳市',24);
insert into city values(ODS_USER.nextval,'安顺市',24);
insert into city values(ODS_USER.nextval,'遵义市',24);
insert into city values(ODS_USER.nextval,'铜仁地区',24);
insert into city values(ODS_USER.nextval,'毕节地区',24) ; 
insert into city values(ODS_USER.nextval,'黔西南布依族苗族自治州',24);
insert into city values(ODS_USER.nextval,'黔东南苗族侗族自治州',24);
insert into city values(ODS_USER.nextval,'黔南布依族苗族自治州',24);
----------------------------------------
insert into province values(25,'云南省');  

insert into city values(ODS_USER.nextval,'昆明市',25);  
insert into city values(ODS_USER.nextval,'曲靖市',25);  
insert into city values(ODS_USER.nextval,'玉溪市',25);  
insert into city values(ODS_USER.nextval,'保山市',25);  
insert into city values(ODS_USER.nextval,'昭通市',25);  
insert into city values(ODS_USER.nextval,'丽江市',25) ; 
insert into city values(ODS_USER.nextval,'普洱市',25);  
insert into city values(ODS_USER.nextval,'临沧市',25)  ;
insert into city values(ODS_USER.nextval,'德宏傣族景颇族自治州',25) ; 
insert into city values(ODS_USER.nextval,'怒江傈僳族自治州',25) ;
insert into city values(ODS_USER.nextval,'迪庆藏族自治州',25) ; 
insert into city values(ODS_USER.nextval,'大理白族自治州',25) ; 
insert into city values(ODS_USER.nextval,'楚雄彝族自治州',25) ; 
insert into city values(ODS_USER.nextval,'红河哈尼族彝族自治州',25)  ;
insert into city values(ODS_USER.nextval,'文山壮族苗族自治州',25) ; 
insert into city values(ODS_USER.nextval,'西双版纳傣族自治州',25)  ;
----------------------------------------
insert into province values(26,'西藏自治区')  

insert into city values(ODS_USER.nextval,'拉萨市',26);        
insert into city values(ODS_USER.nextval,'那曲地区',26);  
insert into city values(ODS_USER.nextval,'林芝地区',26);  
insert into city values(ODS_USER.nextval,'昌都地区',26);  
insert into city values(ODS_USER.nextval,'山南地区',26) ; 
insert into city values(ODS_USER.nextval,'日喀则地区',26) ; 
insert into city values(ODS_USER.nextval,'阿里地区',26)  ;
----------------------------------------
insert into province values(27,'陕西省');  

insert into city values(ODS_USER.nextval,'西安市',27);  
insert into city values(ODS_USER.nextval,'铜川市',27);  
insert into city values(ODS_USER.nextval,'宝鸡市',27);  
insert into city values(ODS_USER.nextval,'咸阳市',27);  
insert into city values(ODS_USER.nextval,'渭南市',27);  
insert into city values(ODS_USER.nextval,'延安市',27);  
insert into city values(ODS_USER.nextval,'汉中市',27);  
insert into city values(ODS_USER.nextval,'榆林市',27);  
insert into city values(ODS_USER.nextval,'安康市',27);  
insert into city values(ODS_USER.nextval,'商洛市',27);  
----------------------------------------
insert into province values(28,'甘肃省');  

insert into city values(ODS_USER.nextval,'兰州市',28);
insert into city values(ODS_USER.nextval,'嘉峪关',28);
insert into city values(ODS_USER.nextval,'金昌市',28);
insert into city values(ODS_USER.nextval,'白银市',28);
insert into city values(ODS_USER.nextval,'天水市',28);
insert into city values(ODS_USER.nextval,'武威市',28);
insert into city values(ODS_USER.nextval,'酒泉市',28);
insert into city values(ODS_USER.nextval,'张掖市',28);
insert into city values(ODS_USER.nextval,'庆阳市',28);
insert into city values(ODS_USER.nextval,'平凉市',28);
insert into city values(ODS_USER.nextval,'定西市',28);
insert into city values(ODS_USER.nextval,'陇南市',28);
insert into city values(ODS_USER.nextval,'临夏回族自治州',28);
insert into city values(ODS_USER.nextval,'甘南藏族自治州',28);
----------------------------------------
insert into province values(29,'青海省');  

insert into city values(ODS_USER.nextval,'西宁市',29);
insert into city values(ODS_USER.nextval,'海东地区',29);
insert into city values(ODS_USER.nextval,'海北藏族自治州',29);
insert into city values(ODS_USER.nextval,'海南藏族自治州',29);
insert into city values(ODS_USER.nextval,'黄南藏族自治州',29);
insert into city values(ODS_USER.nextval,'果洛藏族自治州',29);
insert into city values(ODS_USER.nextval,'玉树藏族自治州',29);
insert into city values(ODS_USER.nextval,'海西蒙古族藏族自治州',29);
----------------------------------------
insert into province values(30,'宁夏维吾尔自治区');  

insert into city values(ODS_USER.nextval,'银川市',30);
insert into city values(ODS_USER.nextval,'石嘴山',30);
insert into city values(ODS_USER.nextval,'吴忠市',30);
insert into city values(ODS_USER.nextval,'固原市',30);
insert into city values(ODS_USER.nextval,'中卫市',30);
----------------------------------------
insert into province values(31,'新疆自治区');  

insert into city values(ODS_USER.nextval,'乌鲁木齐市',31);
insert into city values(ODS_USER.nextval,'克拉玛依市',31);
insert into city values(ODS_USER.nextval,'吐鲁番地区',31);
insert into city values(ODS_USER.nextval,'哈密地区',31);
insert into city values(ODS_USER.nextval,'和田地区',31)  ;               
insert into city values(ODS_USER.nextval,'阿克苏地区',31);
insert into city values(ODS_USER.nextval,'喀什地区',31);
insert into city values(ODS_USER.nextval,'克孜勒苏柯尔克孜自治州',31);
insert into city values(ODS_USER.nextval,'巴音郭楞蒙古自治州',31);
insert into city values(ODS_USER.nextval,'昌吉回族自治州',31);
insert into city values(ODS_USER.nextval,'博尔塔拉蒙古自治州',31)  ;               
insert into city values(ODS_USER.nextval,'石河子市',31);
insert into city values(ODS_USER.nextval,'阿拉尔市',31);
insert into city values(ODS_USER.nextval,'图木舒克市',31);
insert into city values(ODS_USER.nextval,'五家渠市',31);
insert into city values(ODS_USER.nextval,'伊犁哈萨克自治州',31);

----------------------------------------
insert into province values(32,'台湾省');  

insert into city values(ODS_USER.nextval,'台北市',32);
insert into city values(ODS_USER.nextval,'高雄市',32);
insert into city values(ODS_USER.nextval,'基隆市',32);
insert into city values(ODS_USER.nextval,'新竹市',32);
insert into city values(ODS_USER.nextval,'台中市',32);
insert into city values(ODS_USER.nextval,'嘉义市',32);
insert into city values(ODS_USER.nextval,'台南市',32);
----------------------------------------
insert into province values(33,'香港特别行政区');  

insert into city values(ODS_USER.nextval,'花地玛堂区',33);
insert into city values(ODS_USER.nextval,'圣安多尼堂区',33);
insert into city values(ODS_USER.nextval,'大堂区',33);
insert into city values(ODS_USER.nextval,'望德堂区',33);
insert into city values(ODS_USER.nextval,'风顺堂区',33);
insert into city values(ODS_USER.nextval,'嘉模堂区',33);
insert into city values(ODS_USER.nextval,'圣方济各堂区',33);
insert into city values(ODS_USER.nextval,'路凼区',33);

----------------------------------------
insert into province values(34,'澳门港特别行政区');  

insert into city values(ODS_USER.nextval,'中西区',34);
insert into city values(ODS_USER.nextval,'湾仔区',34);
insert into city values(ODS_USER.nextval,'东区',34);
insert into city values(ODS_USER.nextval,'南区',34);
insert into city values(ODS_USER.nextval,'深水埗区',34);
insert into city values(ODS_USER.nextval,'油尖旺区',34);
insert into city values(ODS_USER.nextval,'九龙城区',34);
insert into city values(ODS_USER.nextval,'黄大仙区',34);
insert into city values(ODS_USER.nextval,'观塘区',34);
insert into city values(ODS_USER.nextval,'北区',34);
insert into city values(ODS_USER.nextval,'大埔区',34);
insert into city values(ODS_USER.nextval,'沙田区',34);

select * from city;
select * from province;
--------------管理员表的创建--------------------------
create table manager(
  manager_id int  primary key not null,
  manager_account varchar(100) unique not null,
  manager_password  varchar(50) unique not null,
  manager_name  varchar(50) unique not null,
  manager_fave varchar(50),
  manager_sex  int check(manager_sex=0 or manager_sex=1) not null,
  manager_contact varchar(50) unique not null
);

update manager set manager_id=3 where manager_id=34
select * from manager;
create sequence manager_id  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
--------------用户表的创建----------------
create table users(
  userid int  primary key not null,
  usermobile varchar(100) not null,
  userpassword varchar(200) not null,
  username varchar(50) not null,
  userface varchar(50),
  usersex int check (usersex=0 or usersex=1) ,
  userhomeaddress varchar(500) ,
  useremail varchar(50) ,
  userregisterdate date ,
  provinceid int references province(provinceid),
  cityid int references city(cityid),
  leibie int,
  remainMoney number,
  ledou number
);
select * from users
select * from address

--交易密码
alter table users add paypassword number;

--银行账户
alter table users add bankaccount number;
select * from bank;

--新增字段
alter table users add bankaccount varchar(50);

--删除字段
alter table users drop  column bankaccount;
--修改字段
alter table users alter column bankaccount varchar(50) not null;

alter table users add remainMoney number;
alter table users add ledou number;
select * from users;

insert into users values('18720865791','1234zzh','zzh杏花雨','images/301067.jpg','0','未填，请完善','暂无',getdate(),'1','1','0')
create sequence userid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
-------------新闻资讯表的创建--------------
create table NewMsg(
 
  new_msg_id int   primary key not null,     
  msg_name varchar(500)not null,     
  one_word varchar(500),     
  msg_content  long not null,   
  msg_content_url  varchar(500)not null,   
  publish_date date not null,     
  publish_username varchar(50)  not null,   
  effective int check (effective=0 or effective=1)not null,      
  seq  int  not null,   
  newsType int check (newsType=0 or newsType=1)not null,      
  Image_Url Varchar(500)not null 

);
select * from newmsg;

create sequence new_msg_id  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;  

-----------------银行表的创建-----------------
create table Bank(
 bankid int  primary key not null,
 bankname varchar(60) unique not null
);
-------数据的新增
create sequence bankid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 10000 
NOCYCLE 
CACHE 30;  

select * from bank;
select bankid.nextval from  dual;


select count(*)+1 from bank;
update bank set bankid=6 where bankid=0
insert into bank values(1,'中国银行');
insert into bank values(2,'中国建设银行');
insert into bank values(3,'中国农业银行');
insert into bank values(4,'中国邮政银行');
insert into bank values(5,'中国工商银行');
truncate table bank;
-------店铺类别表的创建---------
create table storegread(
  greadid  int   primary key not null,     
  greadname  varchar(100)not null
);
alter table storegread add storepercent float
drop table storegread
select * from storegread;

drop sequence greadid;
create sequence greadid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
--修改表名语句
exec sp_rename "teacherGrade","storegread" 
-----------店铺表的创建---------
create table store(
  storeid  int  primary key ,     
  storemobile  varchar(100),     
  storepassword  varchar(100),   
  storeusername  varchar(100),     
  storename  varchar(100),     
  storesex  Int  check (storesex=0 or storesex=1),     
  storeaddress  varchar(500),     
  storeemail  varchar(500),     
  storejianjie  varchar(1000),     
  storespecial  varchar(500),   
  storejiaolin  varchar(50),     
  storeeducation  varchar(50),   
  storepictureurl  varchar(500),   
  bankid  int  references  Bank(bankid) ,
  storebanknumber  Varchar(30),   
  storebankname  Varchar(30) ,  
  gradeid  int  references storegread(greadid)
);

drop table store;
drop sequence storeid;
create sequence storeid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;



------家具表--------
create table home(

  home_id int  primary key not null,
  home_name varchar(500) not null,
  picture_url varchar(500) not null,
  one_word varchar(500) not null,
  introduce varchar(2000) not null,
  home_count int not null,
  price float not null,
  discount float not null,
  effective int not null,
  replay_date date not null,
  replay_username varchar (50) not null,
  seq int not null,
  charge_type int

);

update home set hometype=3 where home_id=12
update home set home_id=12 where home_id=152
select * from home order by home_id;
select * from shoppingcar;
select * from manager;
update home set home_id=6 where home_id=91


insert into home values(home_id.nextval,'简约大气灰色衣柜','attached/jiaju/201705280501176290.jpg','大家快来抢购吧！','3','1500.0','0.0','1',sysdate,'曾志湖','1900*2350','0','17','0','attached/jiaju/201705280501175079.jpg','attached/jiaju/201705280501172900.jpg','attached/jiaju/201705280501178331.jpg','0','简约大气','深圳')

update home set big_small='1680*1930mm' where home_id=3
update home set home_id=3 where home_id=31
--新增字段
--家具类型
alter table home add hometype int
alter table home add picture_url2 varchar(100)
alter table home add picture_url3 varchar(100)
alter table home add picture_url4 varchar(100)
alter table home add tejia int
alter table home add fengge varchar(100)
alter table home add chandi varchar(100)
--已售数量
alter table home add buyed int
--规格
alter table home add big_small varchar(40) 
--颜色
alter table home add color varchar(20) 

update home set fengge='简约大气' where home_id=3

update home set home_id=10 where home_id=124
update home set hometype=12 where home_id=10
select * from home;
update home set picture_url4='attached/jiaju/12.jpg' where home_id=3


select * from (select rownum rn,h.* from home h) where rn>=(0+1) and rn<=(0+10);

insert into home values(1,'简约大气黑白床铺','attached/news/201705180443131198.jpg','新品特惠每周更新','小用户专用','10','2150.0','0.0','1',sysdate,'曾志湖','1','0');

--新增字段
alter table home add charge_type int 
--删除字段
alter table home drop  column introduce;

select * from manager;

select * from home order by home_id;
update manager set manager_fave='attached/head/201705100858567095.jpg' where manager_id=2
create sequence home_id  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

---购买家具表的创建----------
create table PayRecord(
  payrecordid int  primary key not null,
  userid int references  users(userid) not null,
  homeid int  default 0,
  homename varchar(20),
  tupian varchar(50),
  paydate date default sysdate,
  paymoney float ,
  payer varchar(50),
  ordernumber varchar(100),
  dizhi varchar(100),
  shuliang int
);

select * from payrecord;

alter table payrecord drop column isCash;

alter table payrecord add shuliang int;

create sequence payrecordid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

--家具配件表的创建------
create table homepart(
 
  homepartid  int  primary key not null,     
  homeid  int not null,
  homepartname  varchar(100),     
  timelength  int  ,     
  homeparturl  varchar(500),     
  homepartcontent  long,     
  homepartremark varchar(1000),   
  isfree int check(isfree=1 or isfree=0),     
  paixu  int  not null,   
  status  Int  check(status=0 or status=1 or status=2) not null,  
  reason  Varchar(50)  
)


create sequence homepartid
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
---提现表的创建---------
create table CashRecord(
  payrecordid int  primary key not null, 
  userid int references  users(userid) not null,
  homeid  int ,
  storeid int default 0,
  cashdate date default sysdate,
  paymoney float ,
  Incommoney float ,
  status int not null,
  reason  varchar(500) 
)

create sequence payrecordid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

-----优惠券活动明细表的创建-------
create table ExchangeRecord(
  activity_id int  primary key not null,
  activity_name varchar(500) not null,
  activity_desc varchar(2000) not null,
  activity_date date not null,
  manager_id int

);
select * from exchangerecord


create sequence activity_id  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

select * from ExchangeRecord;
---优惠券表----------
create table ExchangeCode(
  exchangecodeid int  primary key not null,  
  activityid int references  ExchangeRecord(activity_id) not null,
  userid int ,
  exchangecode varchar(100) not null ,
  exchangemeony int , 
  exchangestatus int,
  exchangedate date default sysdate,
  validay int
)
select * from exchangecode where exchangecodeid=1 order by exchangecodeid desc
select * from exchangecode;
select * from exchangerecord;

insert into exchangecode(exchangecodeid,exchangecode,exchangemeony,exchangestatus,validay) values(exchangecodeid.nextval,'170526794700', 200, 0,20)

create sequence exchangecodeid 
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

select * from ExchangeCode;
--------用户购买家具评价表的创建------------
create table UserHomeEval(
  userhomeevalid int  primary key not null,     
  userid  int  references  users(userid) not null,     
  homeid  int  references  home(home_id) not null,   
  evallevel  int  not null,     
  evalcontent  varchar(2000),     
  evaldate  date not null  
)

select * from home;
select * from UserHomeEval;
select * from dingdan;
alter table UserHomeEval add pictureurl2 varchar(40);
--修改字段
alter table UserHomeEval modify username varchar(20);



alter table users alter column bankaccount varchar(50) not null;

create sequence userhomeevalid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 100
NOCYCLE 
CACHE 30;

--充值记录表------
create table moneyRecord(
 
  recordid  int  primary key not null,     
  userid  int references users(userid)not null,     
  pay_date  date not null,   
  pay_money  float   

)
alter table moneyrecord add setmoney float;

select * from moneyrecord;

create sequence recordid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
---平台收入表的创建-------
create table pingtai(
  summoney int ,
  times varchar(30)
);
drop table pingtai;

create sequence summoney 
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;
drop sequence summoney;
---购物车表的创建-------
create table shoppingcar(
  carid int primary key  not null,
  homeid int  not null,
  username varchar(500) not null,
  pictureurl varchar(500) not null,
  oneword varchar(500) not null,
  homecount int not null,
  price float not null,
  discount float not null,
  effective int not null,
  replaydate date not null,
  replayusername varchar (50) not null  
)

select * from shoppingcar;
select * from home;
create sequence carid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

alter table shoppingcar drop column effective;

insert into shoppingcar values(carid.nextval,9,'唯美时尚电视柜','attached/jiaju/201706020419082095.jpg','质感清晰',1,4580,100,sysdate,'曾志湖');

delete shoppingcar where carid=2

select * from shoppingcar
--删除字段
alter table shoppingcar drop column storename
--在线留言板表的创建
create table forum
(
       forumid int primary key not null,
       userid int references users(userid),
       replayUserid int not null,
       forumType int check(forumType=1 or forumType=2)not null,
       content number not null,
       forumdate date
);
--订单表的创建
create table dingdan
(
       dingdanid int primary key not null,
       dingdannumber varchar(20) not null,
       name varchar(20),
       time date,
       money number,
       username varchar(20),
       usermobile varchar(11),
       address varchar(30),
       youhui number,
       price number,
       effective int check(effective=1 or effective=2 or effective=3 or effective=4 or effective=5),
       userid int,
       tupian varchar(40),
       homeid int,
       shuliang int 
);
drop table dingdan;

insert into dingdan values(dingdanid.nextval,'170526430579','简约大气黑白沙发',sysdate,'1900','曾志湖','18720865791','江西省吉安市',0,'1900',4,1,'attached/jiaju/5.jpg',2,1);
select * from dingdan;
delete dingdan where dingdanid=32
select * from home;
select * from users;
select * from dingdan;
select * from userhomeeval;
select * from users where  userpassword='zzh1234'  and usermobile='18720865791';
update dingdan set effective=5 where homeid=2 and userid=1;
update dingdan set effective=5 where dingdanid=1;
delete userhomeeval where userhomeevalid=5
alter table dingdan add liuyan varchar(100);
alter table dingdan modify effective int check(effective=1 or effective=2 or effective=3 or effective=4 or effective=5);


insert into dingdan values(dingdanid.nextval,'170526430579','简约大气黑白沙发',sysdate,1900,'曾志湖','18720865791','江西省吉安市泰和县',0,1900,2,1,'attached/jiaju/5.jpg',2,1);


alter table dingdan add shuliang int;

update home set tejia=0 where home_id=3
alter table dingdan add tupian varchar(100)
--序列
create sequence dingdanid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

--收货地址表
create table address
(
       addressid int primary key not null,
       userid int references users(userid),
       username varchar(20),
       address varchar(30),
       telephone varchar(11),
       phone varchar(11),
       unicode varchar(10),
       effective int check(effective=0 or effective=1)
);
alter table address add effective int check(effective=0 or effective=1);
select * from address;
update address set effective=1 where addressid=1
insert into address values(1,1,'zzh杏花雨','江西省吉安市','18720865791','18720865791','343700');

--序列
create sequence addressid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 1000
NOCYCLE 
CACHE 30;

--家具收藏表
create table collection
(
       collectionid int primary key not null,
       username varchar(500) not null,
       pictureurl varchar(500) not null,
       price float not null,
       homecount int not null,
       discount float not null,
       youhui float not null
);
select * from shoppingcar;
select * from collection;
select * from home;
alter table collection add userid int;
alter table collection drop column youhui;

create sequence collectionid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 100
NOCYCLE 
CACHE 30;

select * from manager;

--开户表
create table kaihu
(
       kaihuid int primary key not null,
       userid int references users(userid),
       kaihuname varchar(20),
       bankno varchar(20),
       bankid int references bank(bankid),
       kaihuhang varchar(60)
);

insert into kaihu values(kaihuid.nextval,1,'曾志湖','1234567890123456789',2,'中国建设银行赣州分行');
select * from home;
select * from shoppingcar;
insert into shoppingcar values(carid.nextval,'2','简约大气黑白沙发','attached/jiaju/5.jpg','新品上市','3','1900.0','0.0','1',sysdate,'曾志湖')
alter table shoppingcar add effective int;
update userhomeeval set pictureurl1 ='attached/car/201706110830164577.jpg'  where userhomeevalid=3;

select * from users;
select * from bank;
select * from kaihu;
select * from userhomeeval;

create sequence kaihuid  
INCREMENT BY 1  
START WITH 1  
MINVALUE 1  
MAXVALUE 100
NOCYCLE 
CACHE 30;
----------------------用户新增的操作
select * from userS
select count(*) from users where usermobile='17607975702'
select count(*) from users where usermobile='17607975702'
delete users
update users set username='絮落锦乡'

select *  from users where usermobile='17607975702'
select *  from users where usermobile='17607975702'

--pagesize:每页显示的记录条数
--starpage:起始页
--假设pagesize=5,startpage=5
select * from city;
select * from (select rownum rn,c.* from city c) where rn>=(10+1) and rn<=(10+5)

select count(*) from province
select * from city
select * from (select rownum rn,p.* from province p) where rn>=(0+1) and rn<=(0+10)
select * from (select rownum rn,p.provinceid,p.provincename,c.cityid,c.cityname from city c,province p where c.provinceid=p.provinceid) where rn>=(0+1) and rn<=(0+10)
select * from (select rownum rn,p.provinceid,p.provincename,c.cityid,c.cityname from city c,province p where c.provinceid=p.provinceid) where rn>=(0+1) and rn<=(10+0)

select * from (select rownum rn,b.* from bank b) where rn>=(0+1) and rn<=(0+2)

select * from exchangerecord;
--分页语句
select * from (select rownum rn,b.* from bank b) where rn>=(startpage+1) and rn<=(startpage+pagesize)
--优惠券
select * from (select rownum rn,e.activity_id,e.activity_name,e.activity_desc,m.manager_id,e.activity_date from manager m,exchangerecord e where e.manager_id=m.manager_id and rownum<=10) where rn=1

select * from manager ;
select * from exchangerecord;
select * from exchangecode;

select * from (select rownum rn,e.* from exchangecode e) where rn>=(0) and rn<=(10)




