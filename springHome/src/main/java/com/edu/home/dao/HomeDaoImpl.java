package com.edu.home.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.home.model.HomeDto;

@Repository
public class HomeDaoImpl implements HomeDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<HomeDto> homeSelectList() {
		// TODO Auto-generated method stub
		System.out.println("homeDao.homeSelectList() 내부");
		List<HomeDto> homeList = sqlSession.selectList("com.edu.home.homeSelectList");
		
		
		return homeList;
	}
	
}
