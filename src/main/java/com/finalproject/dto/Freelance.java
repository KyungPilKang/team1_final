package com.finalproject.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Freelance {
	private int no;
	private String member_no;
	private String name;
	private String region;
	private String gender;
	private String age;
	private String age_section;
	private String email;
	private String phone;
	private String freelance_type;
	private String labor_type;
	private String labor_time;
	private String career;
	private String grade;
	private String class_type;
	private String class_type_etc;
	private String education;
	private String univ;
	private String major;
	private MultipartFile certification_file;
	private String certification_file_name;
	private String camera;
	private String camera_etc;
	private String lecture_video;
	private String lecture_video_etc;
	private String lecture_video_format;
	private String editor_tool;
	private String editor_tool_etc;
	private String lecture_edit;
	private String lecture_edit_etc;
	private String lecture_edit_format;
	private String introduce_title;
	private String introduce_contents;
	private MultipartFile promotion_video_file;
	private String promotion_video_file_name;
	private MultipartFile banner_image_file;
	private String banner_image_file_name;
	private String month_pay;
	private String week_pay;
	private String case_pay;
	private Date reg_time;
	
	public Freelance() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMember_no() {
		return member_no;
	}

	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAge_section() {
		return age_section;
	}

	public void setAge_section(String age_section) {
		this.age_section = age_section;
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

	public String getFreelance_type() {
		return freelance_type;
	}

	public void setFreelance_type(String freelance_type) {
		this.freelance_type = freelance_type;
	}

	public String getLabor_type() {
		return labor_type;
	}

	public void setLabor_type(String labor_type) {
		this.labor_type = labor_type;
	}

	public String getLabor_time() {
		return labor_time;
	}

	public void setLabor_time(String labor_time) {
		this.labor_time = labor_time;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getClass_type() {
		return class_type;
	}

	public void setClass_type(String class_type) {
		this.class_type = class_type;
	}

	public String getClass_type_etc() {
		return class_type_etc;
	}

	public void setClass_type_etc(String class_type_etc) {
		this.class_type_etc = class_type_etc;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getUniv() {
		return univ;
	}

	public void setUniv(String univ) {
		this.univ = univ;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public MultipartFile getCertification_file() {
		return certification_file;
	}

	public void setCertification_file(MultipartFile certification_file) {
		this.certification_file = certification_file;
	}

	public String getCertification_file_name() {
		return certification_file_name;
	}

	public void setCertification_file_name(String certification_file_name) {
		this.certification_file_name = certification_file_name;
	}

	public String getCamera() {
		return camera;
	}

	public void setCamera(String camera) {
		this.camera = camera;
	}

	public String getCamera_etc() {
		return camera_etc;
	}

	public void setCamera_etc(String camera_etc) {
		this.camera_etc = camera_etc;
	}

	public String getLecture_video() {
		return lecture_video;
	}

	public void setLecture_video(String lecture_video) {
		this.lecture_video = lecture_video;
	}

	public String getLecture_video_etc() {
		return lecture_video_etc;
	}

	public void setLecture_video_etc(String lecture_video_etc) {
		this.lecture_video_etc = lecture_video_etc;
	}

	public String getLecture_video_format() {
		return lecture_video_format;
	}

	public void setLecture_video_format(String lecture_video_format) {
		this.lecture_video_format = lecture_video_format;
	}

	public String getEditor_tool() {
		return editor_tool;
	}

	public void setEditor_tool(String editor_tool) {
		this.editor_tool = editor_tool;
	}

	public String getEditor_tool_etc() {
		return editor_tool_etc;
	}

	public void setEditor_tool_etc(String editor_tool_etc) {
		this.editor_tool_etc = editor_tool_etc;
	}

	public String getLecture_edit() {
		return lecture_edit;
	}

	public void setLecture_edit(String lecture_edit) {
		this.lecture_edit = lecture_edit;
	}

	public String getLecture_edit_etc() {
		return lecture_edit_etc;
	}

	public void setLecture_edit_etc(String lecture_edit_etc) {
		this.lecture_edit_etc = lecture_edit_etc;
	}

	public String getLecture_edit_format() {
		return lecture_edit_format;
	}

	public void setLecture_edit_format(String lecture_edit_format) {
		this.lecture_edit_format = lecture_edit_format;
	}

	public String getIntroduce_title() {
		return introduce_title;
	}

	public void setIntroduce_title(String introduce_title) {
		this.introduce_title = introduce_title;
	}

	public String getIntroduce_contents() {
		return introduce_contents;
	}

	public void setIntroduce_contents(String introduce_contents) {
		this.introduce_contents = introduce_contents;
	}

	public MultipartFile getPromotion_video_file() {
		return promotion_video_file;
	}

	public void setPromotion_video_file(MultipartFile promotion_video_file) {
		this.promotion_video_file = promotion_video_file;
	}

	public String getPromotion_video_file_name() {
		return promotion_video_file_name;
	}

	public void setPromotion_video_file_name(String promotion_video_file_name) {
		this.promotion_video_file_name = promotion_video_file_name;
	}

	public MultipartFile getBanner_image_file() {
		return banner_image_file;
	}

	public void setBanner_image_file(MultipartFile banner_image_file) {
		this.banner_image_file = banner_image_file;
	}

	public String getBanner_image_file_name() {
		return banner_image_file_name;
	}

	public void setBanner_image_file_name(String banner_image_file_name) {
		this.banner_image_file_name = banner_image_file_name;
	}

	public String getMonth_pay() {
		return month_pay;
	}

	public void setMonth_pay(String month_pay) {
		this.month_pay = month_pay;
	}

	public String getWeek_pay() {
		return week_pay;
	}

	public void setWeek_pay(String week_pay) {
		this.week_pay = week_pay;
	}

	public String getCase_pay() {
		return case_pay;
	}

	public void setCase_pay(String case_pay) {
		this.case_pay = case_pay;
	}

	public Date getReg_time() {
		return reg_time;
	}

	public void setReg_time(Date reg_time) {
		this.reg_time = reg_time;
	}

	
}
