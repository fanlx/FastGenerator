# fast-generator
特点：<br/>
1、可以自动去除表的前缀和字段的前缀 <br/>
2、配置简单，使用灵活

使用方法：

1、更改generator.xml中的配置信息
   
<!--更改基础包位置--><br/>
<entry key="basePackage">com.carme.car</entry><br/>
<!--生成文件的位置--><br/>
<entry key="outputDir">output</entry><br/>
<!--模板文件的目录位置--><br/>
<entry key="templateDir">template</entry><br/>
<!--前缀--><br/>
<entry key="prefix">p,e,c</entry><br/>
<!--要生成的表的表名--><br/>
<entry key="tables">e_coupons,e_coupons_consume,e_coupons_limit_category,e_coupons_limit_product,e_coupons_store</entry><br/>
<!--是否生成数据源中所有的表--><br/>
<entry key="allSwitch">false</entry><br/>
	
2、运行test包中的GeneratorServer.java
