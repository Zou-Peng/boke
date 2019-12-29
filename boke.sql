/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : boke

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 29/12/2019 15:03:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, b'1', b'1', 'IDEA的DataBase功能连接数据库失败\r\nURL加上 ?serverTimezone=GMT 就成功了!\r\n\r\nGMT与UTC https://www.cnblogs.com/jixp/articles/10587494.html', '2018-12-16 17:06:59', 'https://img-blog.csdnimg.cn/20190829140211692.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3RyaXBsZURlbW8=,size_16,color_FFFFFF,t_70', '原创', b'1', b'1', b'1', '数据库database', '2018-12-16 19:01:33', 4, 2, 1, 'aaaaaaaaaaa');
INSERT INTO `t_blog` VALUES (2, b'1', b'1', 'aaaaaa', '2018-12-16 17:07:03', 'https://ae01.alicdn.com/kf/U7b823003c7b3458d89f18ef0ae380f3bB.jpg', '原创', b'1', b'1', b'1', 'aaaaa', '2018-12-16 19:01:44', 0, 3, 1, 'ffffffffffffff');
INSERT INTO `t_blog` VALUES (3, b'0', b'0', 'bbbbbbbbb', '2019-12-16 17:07:06', 'https://ae01.alicdn.com/kf/U7b823003c7b3458d89f18ef0ae380f3bB.jpg', '原创', b'1', b'1', b'0', 'bbbbbbbbbbbb', '2019-12-20 23:37:24', 4, 3, 1, 'aaaaaaaa');
INSERT INTO `t_blog` VALUES (4, b'1', b'1', 'esfsadfsdaf', '2019-12-16 17:07:08', 'https://ae01.alicdn.com/kf/U7b823003c7b3458d89f18ef0ae380f3bB.jpg', '原创', b'1', b'1', b'1', 'fffff', '2019-12-16 19:01:50', 2, 1, 1, 'aaaaaaa');
INSERT INTO `t_blog` VALUES (9, b'1', b'1', 'sdffsd', '2019-12-16 17:07:11', 'https://ae01.alicdn.com/kf/U7b823003c7b3458d89f18ef0ae380f3bB.jpg', '原创', b'1', b'1', b'1', '测试', '2019-12-16 19:01:55', 6, 3, 1, 'aaaaaaaaaa');
INSERT INTO `t_blog` VALUES (10, b'1', b'1', '**1.&和&&的区别？**\r\n&：逻辑与（and）,运算符两边的表达式均为true时，整个结果才为true。\r\n\r\n&&：短路与，如果第一个表达式为false时，第二个表达式就不会计算了。\r\n2.在java中如何跳出当前的多重循环？\r\n\r\n在循环语句外前面定义一个标号，然后在里层循环体的代码中使用带有标号的break语句，即可跳出循环。\r\n\r\n比如：\r\n\r\nok:\r\n\r\nfor (int i = 0; i < 10; i++) {\r\n\r\n{\r\n\r\nfor (int j = 0; j < 10; j++) {\r\n\r\nbreak ok;\r\n\r\n}\r\n\r\n}\r\n\r\n}\r\n3.最有效率的方法算出2X8等于几？\r\n\r\n使用位运算，效率最高：2<<3,表示2向右移动了3位，就相当于2乘以2的3次方,结果：16。\r\n4.”==”和equals方法究竟有什么区别？\r\n\r\n==：表示两个变量的值是否相等，比较两个基本数据类型的数据或者引用变量，用==。\r\n\r\nequals:用于比较两个独立对象的内容是否相同。字符串的比较也用equals。\r\n5. Int和integer的区别？\r\n\r\nInt是Java的8中基本数据类型之一，integer是int的封装类。Int类型的默认值为0，integer默认值为null，所以区别在于，integer能区分出null值和0的区别。\r\n6.三个与取整有关的方法：\r\n\r\nMath.ceil():表示向上取整；Math.ceil(11.3)=12;Math.ceil(-11.3)=-12。\r\n\r\nMath.floor():表示向下取整；Math.floor(11.6)=12;Math.floor(-11.6)=-12。\r\n\r\nMath.round():表示四舍五入；Math.round(11.5)=12;Math.round(-11.5)=-11;\r\n\r\n  Marh.round(11.3)=11;Math.round(-11.3)=--11;\r\n7.重载和重写的区别？\r\n\r\n重载（Overload）：函数名相同，参数不同。可以改变返回值类型，参数的个数和类型。\r\n\r\n重写（Override）：和父类的的方法名称、参数完全相同。\r\n8.面向对象的特征？\r\n\r\n封装：将对象属性和方法的代码封装到一个模块中，也就是一个类中，保证软件内部具有优良的模块性的基础，实现“高内聚，低耦合”。\r\n\r\n抽象：找出一些事物的相似和共性之处，然后归为一个类，该类只考虑事物的相似和共性之处。抽象包括行为抽象和状态抽象。\r\n\r\n继承：在已经存在的类的基础上进行，将其定义的内容作为自己的内容，并可以加入新的内容或者修改原来的方法适合特殊的需要。\r\n\r\n多态：同一操作作用于不同的对象，可以有不同的解释，产生不同的执行结果，就是多态，简单点说：就是用父类的引用指向子类的对象。目的：提高代码复用性，解决项目中紧耦合问题，提高可扩展性。\r\n\r\n多态的机制：靠的是父类的或者接口的引用变量可以指向子类或者具体实现类的实例对象。\r\n9.String和StringBuffuer、StringBuilder的区别？\r\n\r\nString:字符串数值不可变；\r\n\r\nStringBuffer：字符串可修改，可以动态构造字符数据。StringBuffer类是可以通过Append()来修改值。线程安全。\r\n\r\nStringBuilder：线程不安全。\r\n\r\n三者在执行速度方面的比较：StringBuilder >  StringBuffer  >  String\r\n\r\n对于三者使用的总结：\r\n\r\n1.如果要操作少量的数据用 = String　　\r\n\r\n2.单线程操作字符串缓冲区下操作大量数据 = StringBuilder\r\n\r\n3.多线程操作字符串缓冲区下操作大量数据 = StringBuffer\r\n10.java中有几种方法实现一个线程？用什么关键字修饰同步方法？stop()和suspend()方法为何不推荐使用？ \r\n\r\n第一种：继承Thread类。New Thread(){}.start():表示调用子类对象的run方法。\r\n\r\n第二种：实现Runable接口。\r\n\r\n第三种：线程池创建多线程。\r\n\r\n第四种：实现Callable接口，重写call函数（\r\n\r\n继承Thread类实现多线程，重写run方法时没有返回值也不能抛出异常，使用Callable接口就可以解决这个问题。\r\n\r\nCallable接口和Runnable接口的不同之处：\r\n\r\n1.Callable规定的方法是call，而Runnable是run\r\n\r\n2.call方法可以抛出异常，但是run方法不行\r\n\r\n3.Callable对象执行后可以有返回值，运行Callable任务可以得到一个Future对象，通过Future对象可以了解任务执行情况，可以取消任务的执行，而Runnable不可有返回值\r\n\r\n）\r\n\r\n用synchronized 关键字修饰同步方法。\r\n\r\n反对使用stop()，是因为它不安全。它会解除由线程获取的所有锁定，而且如果对象处于一种不连贯状态，那么其他线程能在那种状态下检查和修改它们，结果很难检查出真正的问题所在。\r\n\r\nsuspend() 方法容易发生死锁。调用 suspend() 的时候，目标线程会停下来，但却仍然持有在这之前获得的锁定。此时，其他任何线程都不能访问锁定的资源，除非被\" 挂起\"的线程恢复运行。对任何线程来说，如果它们想恢复目标线程，同时又试图使用任何一个锁定的资源，就会造成死锁。所以不应该使用 suspend() ，而应在自己的 Thread 类中置入一个标志，指出线程应该活动还是挂起。若标志指出线程应该挂起，便用  wait() 命其进入等待状态。若标志指出线程应当恢复，则用一个 notify()重新启动线程。 ', '2019-12-20 13:38:40', 'http://www.bjpowernode.com/ueditor/php/upload/image/20191218/1576636312361694.jpg', '转载', b'1', b'1', b'1', 'java基础知识点整理', '2019-12-20 13:38:40', 7, 3, 1, 'java基础知识点');
INSERT INTO `t_blog` VALUES (11, b'1', b'1', '# **1、什么是Mybatis？**\r\n\r\n（1）Mybatis是一个半ORM（对象关系映射）框架，它内部封装了JDBC，开发时只需要关注SQL语句本身，不需要花费精力去处理加载驱动、创建连接、创建statement等繁杂的过程。程序员直接编写原生态sql，可以严格控制sql执行性能，灵活度高。\r\n\r\n（2）MyBatis 可以使用 XML 或注解来配置和映射原生信息，将 POJO映射成数据库中的记录，避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集。\r\n\r\n（3）通过xml 文件或注解的方式将要执行的各种 statement 配置起来，并通过java对象和 statement中sql的动态参数进行映射生成最终执行的sql语句，最后由mybatis框架执行sql并将结果映射为java对象并返回。（从执行sql到返回result的过程）。\r\n\r\n# 2、Mybaits的优点：\r\n\r\n（1）基于SQL语句编程，相当灵活，不会对应用程序或者数据库的现有设计造成任何影响，SQL写在XML里，解除sql与程序代码的耦合，便于统一管理；提供XML标签，支持编写动态SQL语句，并可重用。\r\n\r\n（2）与JDBC相比，减少了50%以上的代码量，消除了JDBC大量冗余的代码，不需要手动开关连接；\r\n\r\n（3）很好的与各种数据库兼容（因为MyBatis使用JDBC来连接数据库，所以只要JDBC支持的数据库MyBatis都支持）。\r\n\r\n（4）能够与Spring很好的集成；\r\n\r\n（5）提供映射标签，支持对象与数据库的ORM字段关系映射；提供对象关系映射标签，支持对象关系组件维护。\r\n\r\n3、MyBatis框架的缺点：\r\n\r\n（1）SQL语句的编写工作量较大，尤其当字段多、关联表多时，对开发人员编写SQL语句的功底有一定要求。\r\n\r\n（2）SQL语句依赖于数据库，导致数据库移植性差，不能随意更换数据库。\r\n\r\n4、MyBatis框架适用场合：\r\n\r\n（1）MyBatis专注于SQL本身，是一个足够灵活的DAO层解决方案。\r\n\r\n（2）对性能的要求很高，或者需求变化较多的项目，如互联网项目，MyBatis将是不错的选择。\r\n\r\n \r\n\r\n5、MyBatis与Hibernate有哪些不同？\r\n\r\n（1）Mybatis和hibernate不同，它不完全是一个ORM框架，因为MyBatis需要程序员自己编写Sql语句。\r\n\r\n（2）Mybatis直接编写原生态sql，可以严格控制sql执行性能，灵活度高，非常适合对关系数据模型要求不高的软件开发，因为这类软件需求变化频繁，一但需求变化要求迅速输出成果。但是灵活的前提是mybatis无法做到数据库无关性，如果需要实现支持多种数据库的软件，则需要自定义多套sql映射文件，工作量大。 \r\n\r\n（3）Hibernate对象/关系映射能力强，数据库无关性好，对于关系模型要求高的软件，如果用hibernate开发可以节省很多代码，提高效率。 \r\n\r\n \r\n\r\n6、#{}和${}的区别是什么？\r\n\r\n#{}是预编译处理，${}是字符串替换。\r\n\r\nMybatis在处理#{}时，会将sql中的#{}替换为?号，调用PreparedStatement的set方法来赋值；\r\n\r\nMybatis在处理${}时，就是把${}替换成变量的值。\r\n\r\n使用#{}可以有效的防止SQL注入，提高系统安全性。\r\n\r\n \r\n\r\n7、当实体类中的属性名和表中的字段名不一样 ，怎么办 ？\r\n\r\n第1种： 通过在查询的sql语句中定义字段名的别名，让字段名的别名和实体类的属性名一致。\r\n\r\n        <select id=”selectorder” parametertype=”int” resultetype=”me.gacl.domain.order”>\r\n           select order_id id, order_no orderno ,order_price price form orders where order_id=#{id};\r\n        </select>\r\n\r\n第2种： 通过<resultMap>来映射字段名和实体类属性名的一一对应的关系。\r\n\r\n     <select id=\"getOrder\" parameterType=\"int\" resultMap=\"orderresultmap\">\r\n            select * from orders where order_id=#{id}\r\n        </select>\r\n     \r\n       <resultMap type=”me.gacl.domain.order” id=”orderresultmap”>\r\n            <!–用id属性来映射主键字段–>\r\n            <id property=”id” column=”order_id”>\r\n     \r\n            <!–用result属性来映射非主键字段，property为实体类属性名，column为数据表中的属性–>\r\n            <result property = “orderno” column =”order_no”/>\r\n            <result property=”price” column=”order_price” />\r\n        </reslutMap>\r\n\r\n \r\n\r\n8、 模糊查询like语句该怎么写?\r\n\r\n第1种：在Java代码中添加sql通配符。\r\n\r\n        string wildcardname = “%smi%”;\r\n        list<name> names = mapper.selectlike(wildcardname);\r\n     \r\n        <select id=”selectlike”>\r\n         select * from foo where bar like #{value}\r\n        </select>\r\n\r\n第2种：在sql语句中拼接通配符，会引起sql注入\r\n\r\n        string wildcardname = “smi”;\r\n        list<name> names = mapper.selectlike(wildcardname);\r\n     \r\n        <select id=”selectlike”>\r\n             select * from foo where bar like \"%\"#{value}\"%\"\r\n        </select>\r\n\r\n \r\n\r\n9、通常一个Xml映射文件，都会写一个Dao接口与之对应，请问，这个Dao接口的工作原理是什么？Dao接口里的方法，参数不同时，方法能重载吗？\r\n\r\nDao接口即Mapper接口。接口的全限名，就是映射文件中的namespace的值；接口的方法名，就是映射文件中Mapper的Statement的id值；接口方法内的参数，就是传递给sql的参数。\r\n\r\nMapper接口是没有实现类的，当调用接口方法时，接口全限名+方法名拼接字符串作为key值，可唯一定位一个MapperStatement。在Mybatis中，每一个`<select>、<insert>、<update>、<delete>`标签，都会被解析为一个MapperStatement对象。\r\n\r\n    举例：com.mybatis3.mappers.StudentDao.findStudentById，可以唯一找到namespace为com.mybatis3.mappers.StudentDao下面 id 为 findStudentById 的 MapperStatement。\r\n\r\nMapper接口里的方法，是不能重载的，因为是使用 全限名+方法名 的保存和寻找策略。Mapper 接口的工作原理是JDK动态代理，Mybatis运行时会使用JDK动态代理为Mapper接口生成代理对象proxy，代理对象会拦截接口方法，转而执行MapperStatement所代表的sql，然后将sql执行结果返回。\r\n\r\n \r\n\r\n10、Mybatis是如何进行分页的？分页插件的原理是什么？\r\n\r\n        Mybatis使用RowBounds对象进行分页，它是针对ResultSet结果集执行的内存分页，而非物理分页。可以在sql内直接书写带有物理分页的参数来完成物理分页功能，也可以使用分页插件来完成物理分页。\r\n\r\n       分页插件的基本原理是使用Mybatis提供的插件接口，实现自定义插件，在插件的拦截方法内拦截待执行的sql，然后重写sql，根据dialect方言，添加对应的物理分页语句和物理分页参数。\r\n\r\n \r\n\r\n11、Mybatis是如何将sql执行结果封装为目标对象并返回的？都有哪些映射形式？\r\n\r\n第一种是使用<resultMap>标签，逐一定义数据库列名和对象属性名之间的映射关系。\r\n\r\n第二种是使用sql列的别名功能，将列的别名书写为对象属性名。\r\n\r\n有了列名与属性名的映射关系后，Mybatis通过反射创建对象，同时使用反射给对象的属性逐一赋值并返回，那些找不到映射关系的属性，是无法完成赋值的。', '2019-12-20 13:44:18', 'https://static.oschina.net/uploads/img/201711/25111828_NthK.png', '转载', b'1', b'1', b'1', 'Mybatis常见面试题总结', '2019-12-20 13:51:48', 11, 9, 1, 'Mybatis常见面试题');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 2);
INSERT INTO `t_blog_tags` VALUES (1, 4);
INSERT INTO `t_blog_tags` VALUES (1, 5);
INSERT INTO `t_blog_tags` VALUES (2, 2);
INSERT INTO `t_blog_tags` VALUES (2, 5);
INSERT INTO `t_blog_tags` VALUES (2, 6);
INSERT INTO `t_blog_tags` VALUES (4, 2);
INSERT INTO `t_blog_tags` VALUES (4, 6);
INSERT INTO `t_blog_tags` VALUES (4, 7);
INSERT INTO `t_blog_tags` VALUES (9, 1);
INSERT INTO `t_blog_tags` VALUES (9, 2);
INSERT INTO `t_blog_tags` VALUES (10, 10);
INSERT INTO `t_blog_tags` VALUES (11, 13);
INSERT INTO `t_blog_tags` VALUES (3, 2);
INSERT INTO `t_blog_tags` VALUES (3, 4);
INSERT INTO `t_blog_tags` VALUES (3, 5);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_id` bigint(20) NULL DEFAULT NULL,
  `parent_comment_id` bigint(20) NULL DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '/images/avatar.png', '测试评论功能', '2019-12-18 23:23:51', 'dffdf@163.com', '张三', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, '/images/avatar.png', '测试评论功能', '2019-12-18 23:25:17', 'dffdf@163.com', '张三', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (5, 'https://ae01.alicdn.com/kf/U2ae23b42188347a0a153bd30cc9f697ex.jpg', '测试博主评论', '2019-12-19 20:51:19', '1121048306@qq.com', '邹鹏', 1, NULL, b'1');
INSERT INTO `t_comment` VALUES (6, 'https://ae01.alicdn.com/kf/U2ae23b42188347a0a153bd30cc9f697ex.jpg', '你好', '2019-12-19 20:51:32', '1121048306@qq.com', '邹鹏', 1, 2, b'1');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, 'aaa');
INSERT INTO `t_tag` VALUES (2, 'bbb');
INSERT INTO `t_tag` VALUES (3, 'ccc');
INSERT INTO `t_tag` VALUES (4, 'ddd');
INSERT INTO `t_tag` VALUES (5, 'eee');
INSERT INTO `t_tag` VALUES (6, 'fff');
INSERT INTO `t_tag` VALUES (7, 'ggg');
INSERT INTO `t_tag` VALUES (8, 'java');
INSERT INTO `t_tag` VALUES (10, '数据');
INSERT INTO `t_tag` VALUES (11, '数据类型');
INSERT INTO `t_tag` VALUES (12, '数据结果');
INSERT INTO `t_tag` VALUES (13, 'mybatis');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '我的日记');
INSERT INTO `t_type` VALUES (2, '错误日志');
INSERT INTO `t_type` VALUES (3, 'java');
INSERT INTO `t_type` VALUES (4, 'javaScript');
INSERT INTO `t_type` VALUES (5, 'Android');
INSERT INTO `t_type` VALUES (6, 'HTML');
INSERT INTO `t_type` VALUES (7, 'CSS');
INSERT INTO `t_type` VALUES (8, 'spring');
INSERT INTO `t_type` VALUES (9, 'mybatis');
INSERT INTO `t_type` VALUES (10, 'springmvc');
INSERT INTO `t_type` VALUES (11, 'springboot');
INSERT INTO `t_type` VALUES (12, 'zzz');
INSERT INTO `t_type` VALUES (13, 'bbb');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://ae01.alicdn.com/kf/U2ae23b42188347a0a153bd30cc9f697ex.jpg', '2019-12-10 23:57:25', '1121048306@qq.com', '邹鹏', '698d51a19d8a121ce581499d7b701668', 1, '2019-12-10 23:58:11', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
