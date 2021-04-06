package com.naver.myhome.market.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.myhome.market.dao.UsedItemDAO;
import com.naver.myhome.market.domain.UsedItem;

@Service
public class UsedItemService {
	@Autowired
	private UsedItemDAO dao;
	
	public void insert(UsedItem usedItem) {
		dao.insert(usedItem);
	}
}
