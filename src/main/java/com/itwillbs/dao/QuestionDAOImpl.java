package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.GetQuestionsDTO;
import com.itwillbs.domain.ServiceDTO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.question.QuestionMapper";

	@Override
	public List<String> getAnswers(int questions_id) {
		
		return sqlSession.selectList(namespace+".getAnswers", questions_id);
	}

	@Override
	public ServiceDTO getServiceName(int services_id) {
		
		return sqlSession.selectOne(namespace+".getServiceName", services_id);
	}

	@Override
	public List<String> getCities() {
		
		return sqlSession.selectList(namespace + ".getCities");
	}

	@Override
	public List<GetQuestionsDTO> getQuestions(int services_id) {
		
		return sqlSession.selectList(namespace + ".getQuestions", services_id);
	}

	
}
