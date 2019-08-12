package com.movie.entity;

public class Customer {

    private Integer customerId;

    private String customerName;

    private String customerPassword;

    private String phone;

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerName='" + customerName + '\'' +
                ", customerPassword='" + customerPassword + '\'' +
                ", phone='" + phone + '\'' +
                ", pingLun='" + pingLun + '\'' +
                '}';
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerPassword() {
        return customerPassword;
    }

    public void setCustomerPassword(String customerPassword) {
        this.customerPassword = customerPassword;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPingLun() {
        return pingLun;
    }

    public void setPingLun(String pingLun) {
        this.pingLun = pingLun;
    }

    private String pingLun;
}
