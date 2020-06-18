package com.example.my_account_book;

import androidx.annotation.Nullable;

import org.litepal.crud.LitePalSupport;

public class Date extends LitePalSupport {
    private String date;
    private double breakfast_cost;
    private double lunch_cost;
    private double dinner_cost;
    private double total;
    private double drink;
    private String extra_cost_description;
    private double extra_cost;

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
        Date date1 = (Date) obj;
        return date.equals(date1.date);

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
}
