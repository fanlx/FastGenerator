<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.dao.${table.sqlName?split("_")[1]};



import java.util.List;

import com.carme.platform.base.dao.BaseDao;
import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.vo.${table.sqlName?split("_")[1]}.${className}Vo;


public interface ${className}Dao extends BaseDao<Long, ${className}>{

	

	/**
	 * 
	 * @Description: 根据Ids获取记录
	 * @param record
	 * @return
	 */
	List<${className}> getByIds(${className}Vo record);

}