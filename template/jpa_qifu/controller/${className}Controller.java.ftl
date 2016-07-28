<#include "/macro.include"/>
<#include "/custom.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
package com.carme.controller.${table.sqlName?split("_")[1]};

import ${basePackage}.support.form.${table.sqlName?split("_")[1]}.${className}SearchForm;
import com.carme.support.ControllerHelper;
import ${basePackage}.domain.${table.sqlName?split("_")[1]}.${className};
import ${basePackage}.service.${table.sqlName?split("_")[1]}.${className}Service;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("${classNameLower}")
public class ${className}Controller {

@Autowired
private ${className}Service ${classNameLower}Service;

@RequestMapping("/list")
public String index(ModelMap map, ${className}SearchForm ${classNameLower}SearchForm) {

        //分页参数处理
        ControllerHelper.doDealParam(${classNameLower}SearchForm);

        //分页查询
        Page<${className}> records = ${classNameLower}Service.findAll(${classNameLower}SearchForm);

        //将jpa返回的分页集合包装为view层需要的分页对象
        PageInfo<${className}> pageInfo = ControllerHelper.getPageInfo(records);
        map.addAttribute("page", pageInfo);
        map.addAttribute("param",${classNameLower}SearchForm);//查询参数

        return "${classNameLower}/list";
}

}
