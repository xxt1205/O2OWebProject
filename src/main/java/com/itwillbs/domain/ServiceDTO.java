package com.itwillbs.domain;

public class ServiceDTO {
	private int id;
	private String name;
	private int seccat_id;
	private String img_url;
	private QuestionDTO questionDTO;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSeccat_id() {
		return seccat_id;
	}
	public void setSeccat_id(int seccat_id) {
		this.seccat_id = seccat_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public QuestionDTO getQuestionDTO() {
		return questionDTO;
	}
	public void setQuestionDTO(QuestionDTO questionDTO) {
		this.questionDTO = questionDTO;
	}
	@Override
	public String toString() {
		return name;
	}
	
}
