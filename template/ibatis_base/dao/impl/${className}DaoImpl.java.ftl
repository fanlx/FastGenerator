<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.dao.${table.sqlName?split("_")[1]}.impl;

import org.springframework.stereotype.Repository;

import com.carme.platform.dao.impl.NewShopBaseDaoImpl;
import java.util.List;
import  ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import  ${basePackage}.dao.${table.sqlName?split("_")[1]}.${className}Dao;
import  ${basePackage}.vo.${table.sqlName?split("_")[1]}.${className}Vo;

@Repository
public class ${className}DaoImpl extends NewShopBaseDaoImpl<Long, ${className}> implements ${className}Dao {

	public String getNameSpace(String suffix) {
		return "${classNameLower}." + suffix;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<${className}> getByIds(${className}Vo record) {
		
		return queryForList(getNameSpace("getByIds"), record);
	}

}
