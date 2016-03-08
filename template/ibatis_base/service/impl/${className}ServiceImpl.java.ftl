<#include "/custom.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basePackage}.service.${table.sqlName?split("_")[1]}.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${basePackage}.bo.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.dao.${table.sqlName?split("_")[1]}.${className}Dao;
import ${basePackage}.service.${table.sqlName?split("_")[1]}.${className}Service;

@Repository
public class ${className}ServiceImpl implements ${className}Service {

	@Autowired
    private ${className}Dao ${classNameLower}Dao;
	
	 @Override
    public ${className} getById(Long id) {
        return ${classNameLower}Dao.getById(id);
    }

    @Override
    public Long save(${className} entity) {
        return ${classNameLower}Dao.save(entity);
    }

    @Override
    public void save(List<${className}> entityList) {
        ${classNameLower}Dao.save(entityList);
    }

    @Override
    public int update(${className} entity) {
        return ${classNameLower}Dao.update(entity);
    }

    @Override
    public void update(List<${className}> entityList) {
        ${classNameLower}Dao.update(entityList);
    }

    @Override
    public int deleteById(Long id) {
        return ${classNameLower}Dao.deleteById(id);
    }

    @Override
    public void deleteByIds(Long[] ids) {
        ${classNameLower}Dao.deleteByIds(ids);
    }

    @Override
    public int logicDelById(Long id) {
        return ${classNameLower}Dao.logicDelById(id);
    }

    @Override
    public void logicDelById(Long[] ids) {
        ${classNameLower}Dao.logicDelById(ids);
    }

}
