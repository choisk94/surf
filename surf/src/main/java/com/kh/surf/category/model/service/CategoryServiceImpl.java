package com.kh.surf.category.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.category.model.dao.CategoryDao;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao cDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<String> selectCategory(){
		ArrayList<String> arrCat = cDao.selectCategory(sqlSession);
		return arrCat;
	}

}
