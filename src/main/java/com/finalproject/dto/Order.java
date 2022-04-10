package com.finalproject.dto;

import java.sql.Date;

public class Order {
    private String order_num; // 주문번호
    private String username; // 세션
    private Date order_date; // now()
    //    private String order_book_list; // 이거 필요 없을 것 같음, 주문번호로 가져오면됨
    //주문번호에 해당하는 order_book 테이블 list를 가져오면 된다
    private String order_method; // 결제수단
    private String order_deli_num; // 송장번호
    private String order_state; // 주문상태 (default=결제완료)

    private String deli_address; // 배송지명
    private String deli_name; // 수령인
    private String zipcode; // 우편번호
    private String doro_juso; // 도로명주소
    private String sangse_juso; // 상세주소
    private String phone; // 연락처
    private String email; // 이메일
    private  int total_price; // 주문 총액

    public String getOrder_num() {
        return order_num;
    }

    public void setOrder_num(String order_num) {
        this.order_num = order_num;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public String getOrder_method() {
        return order_method;
    }

    public void setOrder_method(String order_method) {
        this.order_method = order_method;
    }

    public String getOrder_deli_num() {
        return order_deli_num;
    }

    public void setOrder_deli_num(String order_deli_num) {
        this.order_deli_num = order_deli_num;
    }

    public String getOrder_state() {
        return order_state;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }


    public String getDeli_address() {
        return deli_address;
    }

    public void setDeli_address(String deli_address) {
        this.deli_address = deli_address;
    }

    public String getDeli_name() {
        return deli_name;
    }

    public void setDeli_name(String deli_name) {
        this.deli_name = deli_name;
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

    public String getSangse_juso() {
        return sangse_juso;
    }

    public void setSangse_juso(String sangse_juso) {
        this.sangse_juso = sangse_juso;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }
}
