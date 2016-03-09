<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.dao.${table.sqlName?split("_")[1]};



import java.util.List;

import com.carme.platform.base.vo.SimplePageVo;
import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.vo.${table.sqlName?split("_")[1]}.${className}Vo;
import ${basePackage}.vo.${table.sqlName?split("_")[1]}.Query${className}Vo;


public interface ${className}Dao extends BaseDao<Long, ${className}>{

	
	/**
	 * 分页查找
	 * 
	 * @param param
	 * @return
	 */
	SimplePageVo<${className}Vo> query${className}Page(Query${className}Vo param);

	/**
	 * 
	 * @Description: 根据Ids获取记录
	 * @param record
	 * @return
	 */
	List<${className}> selectByIds(${className}Vo record);

}