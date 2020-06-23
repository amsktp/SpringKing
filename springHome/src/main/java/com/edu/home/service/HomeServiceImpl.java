package com.edu.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.home.dao.HomeDao;
import com.edu.home.model.HomeDto;

@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	public HomeDao homeDao;
	
	@Override
	public List<HomeDto> homeSelectList() {
		// TODO Auto-generated method stub
		System.out.println("homeService.homeSelectList()내부");
		List<HomeDto> homeList = homeDao.homeSelectList();
		return homeList;
	}

//컨트롤러에서 서비스로 보냄
//	앞으로는 죽었다 깨어나도 인터페이스를 만들어야함 
	
	
}
