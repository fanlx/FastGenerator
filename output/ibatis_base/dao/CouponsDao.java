package com.carme.car.dao.coupons;



import java.util.List;

import com.carme.platform.base.dao.BaseDao;
import com.carme.car.bo.coupons.Coupons;
import com.carme.car.vo.coupons.CouponsVo;


public interface CouponsDao extends BaseDao<Long, Coupons>{

	

	/**
	 * 
	 * @Description: 根据Ids获取记录
	 * @param record
	 * @return
	 */
	List<Coupons> getByIds(CouponsVo record);

}