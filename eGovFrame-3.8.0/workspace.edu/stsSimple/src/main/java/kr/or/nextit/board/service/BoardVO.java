package kr.or.nextit.board.service;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import kr.or.nextit.inerface.ModifyType;
import kr.or.nextit.inerface.RegistType;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class BoardVO {
	@Min(groups=ModifyType.class, value=1,message="글번호 최소값은 1입니다.")
	private int boNo;
	
	@NotEmpty(message="제목은 필수입니다.")
	@Size(min=3,message="제목은 최소 3자 이상입니다.")
	@Pattern(regexp=".*[가-힣]+.*",message="한글이 한글자 이상 필요합니다.")
	private String boTitle;
	
	private String boContent;
	
	@NotBlank(groups=RegistType.class,message="카테고리는 필수입니다.")
	private String boCategory;
	
	public BoardVO() {
		
	}
	
	public BoardVO(int boNo, String boTitle, String boContent, String boCategory) {
		super();
		this.boNo = boNo;
		this.boTitle = boTitle;
		this.boContent = boContent;
		this.boCategory = boCategory;
	}
	
	public int getBoNo() {
		return boNo;
	}
	public void setBoNo(int boNo) {
		this.boNo = boNo;
	}
	public String getBoTitle() {
		return boTitle;
	}
	public void setBoTitle(String boTitle) {
		this.boTitle = boTitle;
	}
	public String getBoContent() {
		return boContent;
	}
	public void setBoContent(String boContent) {
		this.boContent = boContent;
	}
	public String getBoCategory() {
		return boCategory;
	}
	public void setBoCategory(String boCategory) {
		this.boCategory = boCategory;
	}
}
