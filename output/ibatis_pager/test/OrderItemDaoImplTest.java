package com.carme.car.dao.order.impl;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import java.util.List;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.carme.car.bo.order.OrderItem;
import com.carme.car.dao.order.OrderItemDao;
import com.carme.car.vo.order.OrderItemVo;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({ @ContextConfiguration(name = "parent", locations = {
"classpath:applicationContext.xml",
"classpath:applicationContext-key.xml" }) })
public class OrderItemDaoImplTest {

	@Autowired
	private OrderItemDao orderItemDao;

	private OrderItem getBean() throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		OrderItem orderItem = new OrderItem();
		orderItem.setType();
		orderItem.setOrderId();
		orderItem.setSkuId();
		orderItem.setSkuSpec();
		orderItem.setOptionParentId();
		orderItem.setSkuOptionId();
		orderItem.setSkuOptionName();
		orderItem.setCategoryId();
		orderItem.setCommisionRatio();
		orderItem.setProductId();
		orderItem.setProductName();
		orderItem.setQuantity();
		orderItem.setOrigUnitPrice();
		orderItem.setRealUnitPrice();
		orderItem.setRegbagReducePrice();
		orderItem.setCouponReducePrice();
		orderItem.setTotalPrice();
		orderItem.setPayPrice();
		orderItem.setSellerReceivePrice();
		orderItem.setIsDelete();
		orderItem.setCreatedBy();
		orderItem.setCreatedAt();
		orderItem.setChangedBy();
		orderItem.setChangedAt();
		return orderItem;
	}

	@Test
	public void testGetById() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		orderItemDao.getById(id);
	}

	@Test
	public void testGetByIds() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		OrderItem orderItem1 = getBean();
		Long id1 = orderItemDao.save(orderItem1);
		OrderItemVo vo = new OrderItemVo();
		vo.setCodes(new String[] { id.toString(), id1.toString() });
		orderItemDao.getByIds(vo);
	}

	@Test
	public void testSave() throws ParseException {
		OrderItem orderItem = getBean();
		orderItemDao.save(orderItem);
	}

	@Test
	public void testBatchSave() throws ParseException {
		OrderItem orderItem1 = getBean();
		OrderItem orderItem2 = getBean();
		List<OrderItem> entityList = new ArrayList<OrderItem>();
		entityList.add(orderItem1);
		entityList.add(orderItem2);
		orderItemDao.save(entityList);
	}

    @Test
    public void testBatchUpdate() throws ParseException {
		OrderItem  orderItem1 = getBean();
		Long id1 = orderItemDao.save(orderItem1);
		OrderItem updateObj1 = new OrderItem();
		updateObj1.setId(id1);
		OrderItem orderItem2 = getBean();
		Long id2 = orderItemDao.save(orderItem2);
		OrderItem updateObj2 = new OrderItem();
		updateObj2.setId(id2);
		List<OrderItem> entityList = new ArrayList<OrderItem>();
		entityList.add(updateObj1);
		entityList.add(updateObj2);
		orderItemDao.update(entityList);

	}

	@Test
	public void testDelById() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		orderItemDao.logicDelById(id);
	}

	@Test
	public void testDelByIds() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		OrderItem orderItem1 = getBean();
		Long id1 = orderItemDao.save(orderItem1);

		orderItemDao.logicDelById(new Long[] { id, id1 });
	}

	@Test
	public void testLogicDelById() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		orderItemDao.logicDelById(id);
	}

	@Test
	public void testLogicDelByIds() throws ParseException {
		OrderItem orderItem = getBean();
		Long id = orderItemDao.save(orderItem);
		OrderItem orderItem1 = getBean();
		Long id1 = orderItemDao.save(orderItem1);

		orderItemDao.logicDelById(new Long[] { id, id1 });
	}

	@Test
	public void testQuery() throws ParseException {
		OrderItemVo vo = new OrderItemVo();
		orderItemDao.query(vo);
	}
}