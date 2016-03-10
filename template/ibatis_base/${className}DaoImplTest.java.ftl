<#include "/macro.include"/>
<#include "/custom.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
package ${basePackage}.dao.impl;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.dao.${className}Dao;
import ${basePackage}.vo.${table.sqlName?split("_")[1]}.${className}Vo;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({ @ContextConfiguration(name = "parent", locations = {
"classpath:applicationContext.xml",
"classpath:applicationContext-key.xml" }) })
public class ${className}DaoImplTest {

	@Autowired
	private ${className}Dao ${classNameLower}Dao;

	private ${className} getBean() throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		${className} ${classNameLower} = new ${className}();
        <#list table.columns as column>
		<#if column.pk != true>
		${classNameLower}.set${column.columnName}();
		</#if>
		</#list>
		return ${classNameLower};
	}

	@Test
	public void testGet() throws ParseException {
        ${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${classNameLower}Dao.getById(id);
	}

	@Test
	public void testSave() throws ParseException {
		${className} ${classNameLower} = getBean();
		${classNameLower}Dao.save(${classNameLower});
	}

	@Test
	public void testUpdate() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});

		${className} updateObj = new ${className}();
		updateObj.setId(id);
		${classNameLower}Dao.update(updateObj);

	}

	@Test
	public void testDelete() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${classNameLower}Dao.deleteById(id);
	}

	@Test
	public void testQuery() throws ParseException {
		${className}Vo vo = new ${className}Vo();
		${classNameLower}Dao.query(vo);
	}
}