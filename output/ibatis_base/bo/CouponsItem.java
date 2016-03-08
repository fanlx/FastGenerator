package com.carme.car.bo.coupons;

import java.io.Serializable;

/**
 * 
 * @ClassName: CouponsItem
 * @Description: 映射e_coupons_item表
 * @author: carme-generator
 *
 */
public class CouponsItem implements Serializable {

    /**
	 * 优惠劵ID
	 */
	private Long   id;
	
	/**
	 * 商家ID
	 */
	private Long storeId;
	
	/**
	 * 门店ID
	 */
	private Long shopId;
	
	/**
	 * 用户ID
	 */
	private Long userId;
	
	/**
	 * 批次号
	 */
	private String batchNo;
	
	/**
	 * 优惠劵名称
	 */
	private String name;
	
	/**
	 * 优惠劵类型(1:代金劵  2:打折劵)
	 */
	private Integer couponsType;
	
	/**
	 * 服务类型(1:通用  2:洗车  3:美容  4:保养  5:轮胎)
	 */
	private Integer serviceType;
	
	/**
	 * 金额（单位为分）
	 */
	private Long money;
	
	/**
	 * 最低消费金额（单位为分）
	 */
	private Long useLimitPrice;
	
	/**
	 * 最高优惠金额（单位为分）
	 */
	private Long couponLimitPrice;
	
	/**
	 * 折扣
	 */
	private Integer  discount;
	
	/**
	 * 生效时间
	 */
	private Date effectiveTime;
	
	/**
	 * 失效时间
	 */
	private Date expireTime;
	
	/**
	 * 是否使用(0:未使用 1:已使用)
	 */
	private Integer isUse;
	
	/**
	 * 是否删除(0:未删除  1:已删除)
	 */
	private Integer isDelete;
	
	/**
	 * 状态(1:未开始 2:进行中 3:已过期)
	 */
	private Integer status;
	
	/**
	 * 创建人
	 */
	private String createdBy;
	
	/**
	 * 创建时间
	 */
	private Date createdAt;
	
	/**
	 * 修改人
	 */
	private String changedBy;
	
	/**
	 * 修改时间
	 */
	private Date changedAt;




}