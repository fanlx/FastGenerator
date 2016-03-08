package com.carme.car.dao.coupons.impl;

import org.springframework.stereotype.Repository;

import com.carme.platform.dao.impl.NewShopBaseDaoImpl;
import java.util.List;
import  com.carme.car.bo.coupons.Coupons;
import  com.carme.car.dao.coupons.CouponsDao;
import  com.carme.car.vo.coupons.CouponsVo;

@Repository
public class CouponsDaoImpl extends NewShopBaseDaoImpl<Long, Coupons> implements CouponsDao {

	public String getNameSpace(String suffix) {
		return "coupons." + suffix;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Coupons> getByIds(CouponsVo record) {
		
		return queryForList(getNameSpace("getByIds"), record);
	}

}
