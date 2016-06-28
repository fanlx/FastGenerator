<#include "/macro.include"/>
<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.vo.${table.sqlName?split("_")[1]};

import com.carme.platform.base.vo.AbstractPageParamVo;

/**
 * 
 * @ClassName: Query${className}Vo
 * @Description:
 * @author: carme-generator
 *
 */
public class Query${className}Vo extends AbstractPageParamVo {

	

	

}
