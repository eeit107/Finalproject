package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "CustomerInfo")
public class CustomerInfoBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer ListId;
	private Integer adId;
	private Integer productId;
	private String memberid;
	private String address;
	private Integer age;
	private String gender;
	private Integer genderindex;
	private String education;
	private String jobs;
	private String email;
	private String Campaigndate;
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getListId() {
		return ListId;
	}

	public void setListId(Integer listId) {
		ListId = listId;
	}

	public Integer getAdId() {
		return adId;
	}

	public void setAdId(Integer adId) {
		this.adId = adId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	@Override
	public String toString() {
		return "CustomerInfoBean [ListId=" + ListId + ", adId=" + adId + ", productId=" + productId + ", memberid="
				+ memberid + ", address=" + address + ", age=" + age + ", gender=" + gender + ", education=" + education
				+ ", jobs=" + jobs + ", email=" + email + ", Campaigndate=" + Campaigndate + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCampaigndate() {
		return Campaigndate;
	}

	public void setCampaigndate(String campaigndate) {
		Campaigndate = campaigndate;
	}

}
