# carme-generator
特点：<br/>
1、可以自动去除表的前缀和字段的前缀 <br/>
2、配置简单，使用灵活

使用方法：

1、更改generator.xml中的配置信息
   
  <!--更改基础包位置-->
  <entry key="basePackage">com.carme.car</entry>
  <!--生成文件的位置-->
	<entry key="outputDir">output</entry>
	<!--模板文件的目录位置-->
	<entry key="templateDir">template</entry>
	<!--前缀-->
	<entry key="prefix">p,e,c</entry>
	<!--要生成的表的表名-->
	<entry key="tables">e_coupons,e_coupons_consume,e_coupons_limit_category,e_coupons_limit_product,e_coupons_store</entry>
	<!--是否生成数据源中所有的表-->
	<entry key="allSwitch">false</entry>
	
2、运行test包中的GeneratorServer.java
