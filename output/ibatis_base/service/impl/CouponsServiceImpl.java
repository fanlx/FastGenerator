package com.carme.car.service.coupons.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.carme.car.bo.coupons.Coupons;
import com.carme.car.dao.coupons.CouponsDao;
import com.carme.car.service.coupons.CouponsService;

@Repository
public class CouponsServiceImpl implements CouponsService {

	@Autowired
    private CouponsDao couponsDao;
	
	 @Override
    public Coupons getById(Long id) {
        return couponsDao.getById(id);
    }

    @Override
    public Long save(Coupons entity) {
        return couponsDao.save(entity);
    }

    @Override
    public void save(List<Coupons> entityList) {
        couponsDao.save(entityList);
    }

    @Override
    public int update(Coupons entity) {
        return couponsDao.update(entity);
    }

    @Override
    public void update(List<Coupons> entityList) {
        couponsDao.update(entityList);
    }

    @Override
    public int deleteById(Long id) {
        return couponsDao.deleteById(id);
    }

    @Override
    public void deleteByIds(Long[] ids) {
        couponsDao.deleteByIds(ids);
    }

    @Override
    public int logicDelById(Long id) {
        return couponsDao.logicDelById(id);
    }

    @Override
    public void logicDelById(Long[] ids) {
        couponsDao.logicDelById(ids);
    }

}
