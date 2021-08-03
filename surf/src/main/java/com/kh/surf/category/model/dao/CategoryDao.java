package com.kh.surf.category.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository	
public class CategoryDao {
	
	public ArrayList<String> selectCategory(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("categoryMapper.selectCategory");
	}
	
}
