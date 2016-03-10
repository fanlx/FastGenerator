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
import java.util.List;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.dao.${table.sqlName?split("_")[1]}.${className}Dao;
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
	public void testGetById() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${classNameLower}Dao.getById(id);
	}

	@Test
	public void testGetByIds() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${className} ${classNameLower}1 = getBean();
		Long id1 = ${classNameLower}Dao.save(${classNameLower}1);
		${className}Vo vo = new ${className}Vo();
		vo.setCodes(new String[] { id.toString(), id1.toString() });
		${classNameLower}Dao.getByIds(vo);
	}

	@Test
	public void testSave() throws ParseException {
		${className} ${classNameLower} = getBean();
		${classNameLower}Dao.save(${classNameLower});
	}

	@Test
	public void testBatchSave() throws ParseException {
		${className} ${classNameLower}1 = getBean();
		${className} ${classNameLower}2 = getBean();
		List<${className}> entityList = new ArrayList<${className}>();
		entityList.add(${classNameLower}1);
		entityList.add(${classNameLower}2);
		${classNameLower}Dao.save(entityList);
	}

    @Test
    public void testBatchUpdate() throws ParseException {
		${className}  ${classNameLower}1 = getBean();
		Long id1 = ${classNameLower}Dao.save(${classNameLower}1);
		${className} updateObj1 = new ${className}();
		updateObj1.setId(id1);
		${className} ${classNameLower}2 = getBean();
		Long id2 = ${classNameLower}Dao.save(${classNameLower}2);
		${className} updateObj2 = new ${className}();
		updateObj2.setId(id2);
		List<${className}> entityList = new ArrayList<${className}>();
		entityList.add(updateObj1);
		entityList.add(updateObj2);
		${classNameLower}Dao.update(entityList);

	}

	@Test
	public void testDelById() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${classNameLower}Dao.logicDelById(id);
	}

	@Test
	public void testDelByIds() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${className} ${classNameLower}1 = getBean();
		Long id1 = ${classNameLower}Dao.save(${classNameLower}1);

		${classNameLower}Dao.logicDelById(new Long[] { id, id1 });
	}

	@Test
	public void testLogicDelById() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${classNameLower}Dao.logicDelById(id);
	}

	@Test
	public void testLogicDelByIds() throws ParseException {
		${className} ${classNameLower} = getBean();
		Long id = ${classNameLower}Dao.save(${classNameLower});
		${className} ${classNameLower}1 = getBean();
		Long id1 = ${classNameLower}Dao.save(${classNameLower}1);

		${classNameLower}Dao.logicDelById(new Long[] { id, id1 });
	}

	@Test
	public void testQuery() throws ParseException {
		${className}Vo vo = new ${className}Vo();
		${classNameLower}Dao.query(vo);
	}
}