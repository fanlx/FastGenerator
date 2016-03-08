package com.carme.car.dao.coupons.impl;

import org.springframework.stereotype.Repository;

import com.carme.platform.dao.impl.NewShopBaseDaoImpl;
import java.util.List;
import  com.carme.car.bo.coupons.CouponsItem;
import  com.carme.car.dao.coupons.CouponsItemDao;
import  com.carme.car.vo.coupons.CouponsItemVo;

@Repository
public class CouponsItemDaoImpl extends NewShopBaseDaoImpl<Long, CouponsItem> implements CouponsItemDao {

	public String getNameSpace(String suffix) {
		return "couponsItem." + suffix;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<CouponsItem> getByIds(CouponsItemVo record) {
		
		return queryForList(getNameSpace("getByIds"), record);
	}

}
