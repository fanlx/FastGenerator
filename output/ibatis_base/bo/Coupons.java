package com.carme.car.bo.coupons;

import java.io.Serializable;

/**
 * 
 * @ClassName: Coupons
 * @Description: 映射e_coupons表
 * @author: carme-generator
 *
 */
public class Coupons implements Serializable {

    /**
	 * id
	 */
	private Long   id;
	
	/**
	 * 商家id
	 */
	private Long storeId;
	
	/**
	 * 优惠劵名称
	 */
	private String name;
	
	/**
	 * 批次号
	 */
	private String batchNo;
	
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
	 * 最高优惠金额（单位为分）
	 */
	private Long couponLimitPrice;
	
	/**
	 * 最低消费金额（单位为分）
	 */
	private Long useLimitPrice;
	
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
	 * 发放数量
	 */
	private Long number;
	
	/**
	 * 已领取数量
	 */
	private Long drawedNum;
	
	/**
	 * 已领取数量
	 */
	private Long usedNum;
	
	/**
	 * 每人限领
	 */
	private Integer  perLimit;
	
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