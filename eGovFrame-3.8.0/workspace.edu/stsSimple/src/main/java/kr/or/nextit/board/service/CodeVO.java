package kr.or.nextit.board.service;

public class CodeVO {
	private String codeCd;
	private String codeNm;
	
	public String getCodeCd() {
		return codeCd;
	}
	public void setCodeCd(String codeCd) {
		this.codeCd = codeCd;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}
	public CodeVO(String codeCd, String codeNm) {
		super();
		this.codeCd = codeCd;
		this.codeNm = codeNm;
	}
}
