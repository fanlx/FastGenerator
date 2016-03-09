<#include "/macro.include"/>
<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.vo.${table.sqlName?split("_")[1]};

import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};

/**
 * 
 * @ClassName: ${className}Vo
 * @Description:
 * @author: carme-generator
 *
 */
public class ${className}Vo extends ${className} {


	/**
	 * id集合
	 */
	private String[] codes;

	

	public String[] getCodes() {
		return codes;
	}

	public void setCodes(String[] codes) {
		this.codes = codes;
	}

	

}
