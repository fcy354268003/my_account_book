package com.example.my_account_book;

import androidx.annotation.Nullable;

import org.litepal.crud.LitePalSupport;

public class Date extends LitePalSupport {
    private String date;
    private int breakfast_cost;
    private int lunch_cost;
    private int dinner_cost;
    private int total;
    private int drink;
    private String extra_cost_description;

    public String getExtra_cost_description() {
        return extra_cost_description;
    }

    public void setExtra_cost_description(String extra_cost_description) {
        this.extra_cost_description = extra_cost_description;
    }

    public int getDrink() {
        return drink;
    }

    public void setDrink(int drink) {
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

    public int getBreakfast_cost() {
        return breakfast_cost;
    }

    public void setBreakfast_cost(int breakfast_cost) {
        this.breakfast_cost = breakfast_cost;
    }

    public int getLunch_cost() {
        return lunch_cost;
    }

    public void setLunch_cost(int lunch_cost) {
        this.lunch_cost = lunch_cost;
    }

    public int getDinner_cost() {
        return dinner_cost;
    }

    public void setDinner_cost(int dinner_cost) {
        this.dinner_cost = dinner_cost;
    }



    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
