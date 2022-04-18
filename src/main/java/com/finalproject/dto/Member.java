package com.finalproject.dto;

public class Member {
	
	private int no;
	private String username;
	private String password;
	private String name;
	private String nickname;
	private String email;
	private String birth;
	private String age;
	private String type;
	private String phone;
	private String zipcode;
	private String doro_juso;
	private String sangse_juso1;
	private String sangse_juso2;
	private String role;
	private String provider;
	private String provider_id;
	private String withdraw_status;
	private String withdraw_type;
	private String withdraw_contents;
	private int login_count;
	private String withdraw_date;
	
	
	
	public String toString() {
		return "Member [no=" + no + ", username=" + username + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", email=" + email + ", birth=" + birth + ", age=" + age + ", type="
				+ type + ", phone=" + phone + ", zipcode=" + zipcode + ", doro_juso=" + doro_juso + ", sangse_juso1="
				+ sangse_juso1 + ", sangse_juso2="+ sangse_juso2 + ", role=" + role + ", provider=" + provider + ", provider_id=" + provider_id
				+ ", withdraw_status=" + withdraw_status + ", withdraw_type=" + withdraw_type + ", withdraw_contents="
				+ withdraw_contents + ", login_count=" + login_count + ", getNo()=" + getNo() + ", getUsername()="
				+ getUsername() + ", getPassword()=" + getPassword() + ", getName()=" + getName() + ", getNickname()="
				+ getNickname() + ", getEmail()=" + getEmail() + ", getBirth()=" + getBirth() + ", getAge()=" + getAge()
				+ ", getType()=" + getType() + ", getPhone()=" + getPhone() + ", getZipcode()=" + getZipcode()
				+ ", getDoro_juso()=" + getDoro_juso() + ", getSangse_juso1()=" + getSangse_juso1() + ", getSangse_juso2()=" + getSangse_juso2() + ", getRole()="
				+ getRole() + ", getProvider()=" + getProvider() + ", getProvider_id()=" + getProvider_id()
				+ ", getWithdraw_status()=" + getWithdraw_status() + ", getWithdraw_type()=" + getWithdraw_type()
				+ ", getWithdraw_contents()=" + getWithdraw_contents() + ", getLogin_count()=" + getLogin_count()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getBirth() {
		return birth;
	}



	public void setBirth(String string) {
		this.birth = string;
	}



	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getZipcode() {
		return zipcode;
	}



	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}



	public String getDoro_juso() {
		return doro_juso;
	}



	public void setDoro_juso(String doro_juso) {
		this.doro_juso = doro_juso;
	}



	public String getSangse_juso1() {
		return sangse_juso1;
	}

	public void setSangse_juso1(String sangse_juso1) {
		this.sangse_juso1 = sangse_juso1;
	}
	
	public String getSangse_juso2() {
		return sangse_juso2;
	}

	public void setSangse_juso2(String sangse_juso2) {
		this.sangse_juso2 = sangse_juso2;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public String getProvider() {
		return provider;
	}



	public void setProvider(String provider) {
		this.provider = provider;
	}



	public String getProvider_id() {
		return provider_id;
	}



	public void setProvider_id(String provider_id) {
		this.provider_id = provider_id;
	}



	public String getWithdraw_status() {
		return withdraw_status;
	}



	public void setWithdraw_status(String withdraw_status) {
		this.withdraw_status = withdraw_status;
	}



	public String getWithdraw_type() {
		return withdraw_type;
	}



	public void setWithdraw_type(String withdraw_type) {
		this.withdraw_type = withdraw_type;
	}



	public String getWithdraw_contents() {
		return withdraw_contents;
	}



	public void setWithdraw_contents(String withdraw_contents) {
		this.withdraw_contents = withdraw_contents;
	}
	

	public int getLogin_count() {
		return login_count;
	}

	public void setLogin_count(int login_count) {
		this.login_count = login_count;
	}

	public String getWithdraw_date() {
	    return withdraw_date;
	}

	public void setWithdraw_date(String withdraw_date) {
	    this.withdraw_date = withdraw_date;
	}


	

}
