package com.example.my_account_book.bean;

import androidx.annotation.NonNull;

import org.litepal.annotation.Column;
import org.litepal.crud.LitePalSupport;

public class Item extends LitePalSupport {
    private String cause;
    private double cost;
    // 每条数据的标识由日期与position构成"2020-10-11"
    private String uri;

    public Item(String uri){
        this.uri = uri;
    }
    public String getUri() {
        return uri;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}
