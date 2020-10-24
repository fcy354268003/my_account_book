package com.example.my_account_book.bean;

import androidx.annotation.Nullable;

import org.litepal.crud.LitePalSupport;

import java.util.Objects;

public class Date extends LitePalSupport {
    // 日期

    private String date;
    /**
     * 账本相关
     * 早餐 午餐 晚餐 全部 饮料 额外花费 额外花费说明
     */
    private double breakfast_cost;
    private double lunch_cost;
    private double dinner_cost;
    private double total;
    private double drink;
    private String extra_cost_description;
    private double extra_cost;
    /**
     * 日记相关
     * <p>
     * 日记内容 心情序号 天气序号
     */
    private String content;
    private int stateOrder;
    private int weatherOrder;

    public Date(){
        extra_cost_description = "";
        content = "";
    }
    public double getExtra_cost() {
        return extra_cost;
    }

    public void setExtra_cost(double extra_cost) {
        this.extra_cost = extra_cost;
    }

    public String getExtra_cost_description() {
        return extra_cost_description;
    }

    public void setExtra_cost_description(String extra_cost_description) {
        this.extra_cost_description = extra_cost_description;
    }

    public double getDrink() {
        return drink;
    }

    public void setDrink(double drink) {
        this.drink = drink;
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if(obj instanceof Date){
            Date date1 = (Date) obj;
            return date.equals(date1.date);
        }else return false;
    }

    @Override
    public int hashCode() {
        return Objects.hash(date);
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getBreakfast_cost() {
        return breakfast_cost;
    }

    public void setBreakfast_cost(double breakfast_cost) {
        this.breakfast_cost = breakfast_cost;
    }

    public double getLunch_cost() {
        return lunch_cost;
    }

    public void setLunch_cost(double lunch_cost) {
        this.lunch_cost = lunch_cost;
    }

    public double getDinner_cost() {
        return dinner_cost;
    }

    public void setDinner_cost(double dinner_cost) {
        this.dinner_cost = dinner_cost;
    }


    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setStateOrder(int stateOrder) {
        this.stateOrder = stateOrder;
    }

    public void setWeatherOrder(int weatherOrder) {
        this.weatherOrder = weatherOrder;
    }

    public String getContent() {
        return content;
    }

    public int getStateOrder() {
        return stateOrder;
    }

    public int getWeatherOrder() {
        return weatherOrder;
    }


}
