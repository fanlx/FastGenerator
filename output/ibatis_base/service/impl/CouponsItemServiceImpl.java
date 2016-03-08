package com.carme.car.service.coupons.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.carme.car.bo.coupons.CouponsItem;
import com.carme.car.dao.coupons.CouponsItemDao;
import com.carme.car.service.coupons.CouponsItemService;

@Repository
public class CouponsItemServiceImpl implements CouponsItemService {

	@Autowired
    private CouponsItemDao couponsItemDao;
	
	 @Override
    public CouponsItem getById(Long id) {
        return couponsItemDao.getById(id);
    }

    @Override
    public Long save(CouponsItem entity) {
        return couponsItemDao.save(entity);
    }

    @Override
    public void save(List<CouponsItem> entityList) {
        couponsItemDao.save(entityList);
    }

    @Override
    public int update(CouponsItem entity) {
        return couponsItemDao.update(entity);
    }

    @Override
    public void update(List<CouponsItem> entityList) {
        couponsItemDao.update(entityList);
    }

    @Override
    public int deleteById(Long id) {
        return couponsItemDao.deleteById(id);
    }

    @Override
    public void deleteByIds(Long[] ids) {
        couponsItemDao.deleteByIds(ids);
    }

    @Override
    public int logicDelById(Long id) {
        return couponsItemDao.logicDelById(id);
    }

    @Override
    public void logicDelById(Long[] ids) {
        couponsItemDao.logicDelById(ids);
    }

}
