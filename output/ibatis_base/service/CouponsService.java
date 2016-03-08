package com.carme.car.service.coupons;



import java.util.List;

import com.carme.car.bo.coupons.Coupons;


public interface CouponsService {

	
    /**
     * 
     * @Description: 根据ID获取记录
     * @param id
     * @return
     */
    Coupons getById(Long id);

    /**
     * 
     * @Description: 保存记录并返回主键
     * @param entity
     * @return
     */
    Long save(Coupons entity);

    /**
     * 
     * @Description: 批量保存 记录
     * @param entityList
     */
    void save(List<Coupons> entityList);

    /**
     * 
     * @Description: 更新记录（主键不为空）
     * @param entity
     * @return
     */
    int update(Coupons entity);

    /**
     * 
     * @Description: 批量更新记录（记录主键不为空）
     * @param entityList
     */
    void update(List<Coupons> entityList);

    /**
     * 
     * @Description: 根据ID删除记录（物理）
     * @param id
     * @return
     */
    int deleteById(Long id);

    /**
     * 
     * @Description: 根据ID集合批量删除记录（物理）
     * @param ids
     */
    void deleteByIds(Long[] ids);

    /**
     * 
     * @Description: 根据ID删除记录（逻辑）
     * @param id
     * @return
     */
    int logicDelById(Long id);

    /**
     * 
     * @Description: 根据ID集合批量删除记录（逻辑）
     * @param ids
     */
    void logicDelById(Long[] ids);
}