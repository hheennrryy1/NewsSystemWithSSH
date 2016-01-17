#使用SSH的分类查看新闻网
整合了struts2 + Spring4 + Hibernate4    
数据库使用MySQL5.6    
当你第一次运行时，首先更改WebContent/WEB-INF/applicationContext.xml中的用户和密码
```xml
   <property name="jdbcUrl" value="jdbc:mysql://localhost:3306/newssystem?characterEncoding=UTF-8"/>  
   <property name="user" value="root"/>  
   <property name="password" value="root"/>  
```
在你的数据库中建表
```sql
CREATE TABLE `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `summary` varchar(140) DEFAULT NULL,
  `content` text NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
```
