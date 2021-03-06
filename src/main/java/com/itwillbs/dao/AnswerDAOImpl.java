package com.itwillbs.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

@Repository
public class AnswerDAOImpl implements AnswerDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.answer.AnswerMapper";

	@Override
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO) {
	
		return sqlSession.selectOne(namespace+".getAnswer_id", answerDTO);
	}

	@Override
	public void insertEstimates(int account_id) {
		sqlSession.insert(namespace+".insertEstimates", account_id);
		
	}


	@Override
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO) {
		sqlSession.insert(namespace + ".insertEstimatesMid", estimatesMidDTO);
		
	}

	@Override
	public int getEstimates_id() {
		
		return sqlSession.selectOne(namespace+".getEstimates_id");
	}

	@Override
	public CityDTO getCityId(String city) {
		
		return sqlSession.selectOne(namespace + ".getCityId", city);
	}

	@Override
	public DistrictDTO getDistrictsId(DistrictDTO districtDTO) {
		
		return sqlSession.selectOne(namespace+".getDistrictsId", districtDTO);
	}

	@Override
	public AddistrictDTO getAddistrictId(AddistrictDTO addistrictDTO) {
		
		return sqlSession.selectOne(namespace + ".getAddistrictId", addistrictDTO);
	}

	@Override
	public void insertAddress(AddressDTO addressDTO) {
		
		sqlSession.insert(namespace + ".insertAddress", addressDTO);
	}

	@Override
	public int getMaxAddrId() {
		
		return sqlSession.selectOne(namespace + ".getMaxAddrId");
	}

	@Override
	public void updateEstimates(HashMap<String, Integer> map) {
		
		sqlSession.update(namespace + ".updateEstimates", map);
	}

	
	
}
