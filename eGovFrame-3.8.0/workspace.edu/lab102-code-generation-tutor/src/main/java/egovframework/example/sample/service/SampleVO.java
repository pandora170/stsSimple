package egovframework.example.sample.service;

/**
 * @Class Name : SampleVO.java
 * @Description : Sample VO class
 * @Modification Information
 *
 * @author 홍길동
 * @since 0000/00/00
 * @version 1.0
 * @see
 *  
 *  Copyright (C)  All right reserved.
 */
public class SampleVO extends SampleDefaultVO{
    private static final long serialVersionUID = 1L;
    
    /** ID */
    private java.lang.String id;
    
    /** NAME */
    private java.lang.String name;
    
    /** DESCRIPTION */
    private java.lang.String description;
    
    /** USE_YN */
    private java.lang.String useYn;
    
    /** REG_USER */
    private java.lang.String regUser;
    
    public java.lang.String getId() {
        return this.id;
    }
    
    public void setId(java.lang.String id) {
        this.id = id;
    }
    
    public java.lang.String getName() {
        return this.name;
    }
    
    public void setName(java.lang.String name) {
        this.name = name;
    }
    
    public java.lang.String getDescription() {
        return this.description;
    }
    
    public void setDescription(java.lang.String description) {
        this.description = description;
    }
    
    public java.lang.String getUseYn() {
        return this.useYn;
    }
    
    public void setUseYn(java.lang.String useYn) {
        this.useYn = useYn;
    }
    
    public java.lang.String getRegUser() {
        return this.regUser;
    }
    
    public void setRegUser(java.lang.String regUser) {
        this.regUser = regUser;
    }
    
}
