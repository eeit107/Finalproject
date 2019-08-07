package com.web.store.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Shopmember")
public class ShopmemberBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer seqNo;

	private String memberid;

	private String password;

	private String username;

	private String email;

	private String phone;

	private String permission;

	private Date registeddate;

	private String unpaid;

	private String role;

	private String Status;

	private String userImage;
	private String address;
	// Employer Identification Number:統一編號
	private String ein;
	private String companyname;
	private String companytel;
	private Integer age;
	private String gender;
	private String education;
	private String jobs;
	private Set<CartBean> cartBean=new HashSet<>();
	private Set<CommentBean> cmb= new LinkedHashSet<>();
	private String level="普通賣家";
	Set<QaBean> qabean;



	public ShopmemberBean(Integer seqNo, String memberid, String password, String username, String email, String phone,
			String permission, Date registeddate, String unpaid, String role, String status, String userImage,
			String address, String ein, String companyname,String companytel,Integer age,String gender,String education,String jobs) {
		super();
		this.seqNo = seqNo;
		this.memberid = memberid;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.permission = permission;
		this.registeddate = registeddate;
		this.unpaid = unpaid;
		this.role = role;
		Status = status;
		this.userImage = userImage;
		this.address = address;
		this.ein = ein;
		this.companyname = companyname;
		this.companytel = companytel;
		this.age=age;
		this.gender=gender;
		this.education=education;
		this.jobs=jobs;
		

		
	}

	public ShopmemberBean() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seqNo")
	public Integer getSeqNo() {
		return seqNo;
	}

	public void setSeqNo(Integer seqNo) {
		this.seqNo = seqNo;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	@Override
	public String toString() {
		return "userid=" + memberid + " password=" + password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public java.sql.Date getRegisteddate() {
		return registeddate;
	}

	public void setRegisteddate(java.sql.Date registeddate) {
		this.registeddate = registeddate;
	}

	public String getUnpaid() {
		return unpaid;
	}

	public void setUnpaid(String unpaid) {
		this.unpaid = unpaid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEin() {
		return ein;
	}

	public void setEin(String ein) {
		this.ein = ein;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanytel() {
		return companytel;
	}

	public void setCompanytel(String companytel) {
		this.companytel = companytel;
	}
	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}
	@OneToMany
	@JoinColumn(name="shopperId")
	public Set<CartBean> getCartBean() {
		return cartBean;
	}

	public void setCartBean(Set<CartBean> cartBean) {
		this.cartBean = cartBean;
	}
	
	@OneToMany
	@JoinColumn(name="memberId")
	public Set<CommentBean> getCmb() {
		return cmb;
	}

	public void setCmb(Set<CommentBean> cmb) {
		this.cmb = cmb;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="memberId")
	public Set<QaBean> getQabean() {
		return qabean;
	}


	public void setQabean(Set<QaBean> qabean) {
		this.qabean = qabean;
	}

	}


