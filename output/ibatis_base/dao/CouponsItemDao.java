package com.carme.car.dao.coupons;



import java.util.List;

import com.carme.platform.base.dao.BaseDao;
import com.carme.car.bo.coupons.CouponsItem;
import com.carme.car.vo.coupons.CouponsItemVo;


public interface CouponsItemDao extends BaseDao<Long, CouponsItem>{

	

	/**
	 * 
	 * @Description: 根据Ids获取记录
	 * @param record
	 * @return
	 */
	List<CouponsItem> getByIds(CouponsItemVo record);

}