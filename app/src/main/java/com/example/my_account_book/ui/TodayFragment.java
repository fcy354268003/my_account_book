package com.example.my_account_book.ui;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

import android.widget.TextView;


import com.example.my_account_book.bean.Item;
import com.example.my_account_book.widget.MyRecyclerAdapter;
import com.example.my_account_book.widget.MyToast;
import com.example.my_account_book.R;
import com.example.my_account_book.bean.Date;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.header.BezierRadarHeader;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;

import org.litepal.LitePal;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * @author fanchenyang
 * @date 2020/11/9 13:58
 */
public class TodayFragment extends Fragment implements View.OnClickListener {
    private Activity mActivity;
    private boolean enabled = false;
    private SimpleDateFormat format;
    private ImageView mLeft, mRight;
    private java.util.Date date;
    private TextView mTextView;
    private String time;
    private TextView change;
    private static final String TAG = "MainActivity";
    private Date today;
    private EditText mBreakfast, mLaunch, mDinner, mDrink, extra_cost_description;
    private TextView total;
    private Button bSave, bEdit;
    private EditText extra_cost11;
    private SmartRefreshLayout refreshLayout;
    private int timeDifference;
    private RecyclerView recyclerView;
    private FloatingActionButton mFab;
    private MyRecyclerAdapter<Item> mAdapter;
    private List<Item> items;

    public TodayFragment() {
        // Required empty public constructor
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString("time", time);
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View inflate = inflater.inflate(R.layout.fragment_today, container, false);
        super.onCreate(savedInstanceState);
        refreshLayout = inflate.findViewById(R.id.refreshLayout);
        refreshLayout.setOnRefreshListener(new OnRefreshListener() {
            @Override
            public void onRefresh(@NonNull RefreshLayout refreshLayout) {
                init();
                refreshLayout.finishRefresh(1000);
                MyToast.showMessage(mActivity, "刷新成功");
            }
        });
        refreshLayout.setRefreshHeader(new BezierRadarHeader(mActivity).setEnableHorizontalDrag(true));
        mLeft = inflate.findViewById(R.id.left);
        mFab = inflate.findViewById(R.id.fab_add);
        mLeft.setOnClickListener(this);
        mRight = inflate.findViewById(R.id.right);
        mRight.setOnClickListener(this);
        extra_cost11 = inflate.findViewById(R.id.extra_cost1);
        change = inflate.findViewById(R.id.change_date);
        change.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(mActivity, NewDateSelectActivity.class);
                intent.putExtra("time", time);
                startActivityForResult(intent, 1);
                getActivity().overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit);
            }
        });
        extra_cost_description = inflate.findViewById(R.id.extra_cost);
        mDrink = inflate.findViewById(R.id.drink_cost);
        bSave = inflate.findViewById(R.id.save);
        bEdit = inflate.findViewById(R.id.edit);
        recyclerView = inflate.findViewById(R.id.rv_item);
        total = inflate.findViewById(R.id.total_cost);
        mBreakfast = inflate.findViewById(R.id.breakfast);
        mLaunch = inflate.findViewById(R.id.launch);
        mDinner = inflate.findViewById(R.id.dinner);
        mTextView = inflate.findViewById(R.id.today);
        if (savedInstanceState != null && savedInstanceState.getString("time") != null) {
            time = savedInstanceState.getString("time");
        } else if (ContainerActivity.time != null) {
            time = ContainerActivity.time;
        } else {
            format = new SimpleDateFormat("yyyy-MM-dd");
            date = new java.util.Date();
            time = format.format(this.date);
        }
        mTextView.setText(time);
        ContainerActivity.time = time;
        Log.d(TAG, "onCreate: " + time);
        init();
        bSave.setOnClickListener(this);
        bEdit.setOnClickListener(this);
        mFab.setOnClickListener(this);
        return inflate;
    }


    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        mActivity = (Activity) context;
    }

    //初始化数据
    private void init() {
        List<Date> dates = LitePal.where("date = ?", time).find(Date.class);
        if (!dates.isEmpty()) {
            today = dates.get(0);
        } else {
            today = new Date(time);
            MyToast.showMessage(mActivity, "亲，您在该日期还没有过记录");
        }
        extra_cost11.setText(today.getExtra_cost() + "");
        mBreakfast.setText(today.getBreakfast_cost() + "");
        mLaunch.setText(today.getLunch_cost() + "");
        mDinner.setText(today.getDinner_cost() + "");
        total.setText("总共花费：" + today.getTotal());
        mDrink.setText(today.getDrink() + "");
        extra_cost_description.setText(today.getExtra_cost_description());

        items = LitePal.where("uri = ?", time).find(Item.class);
        Log.d(TAG, "init: " + items.size());
        mAdapter = new MyRecyclerAdapter<Item>(items) {
            @Override
            public int getLayoutId(int viewType) {
                return R.layout.add_item;
            }

            @Override
            public void bindView(MyHolder holder, int position, Item item) {
                holder.setText(item.getCause(), R.id.et_cause);
                holder.setText(String.valueOf(item.getCost()), R.id.et_cost);
                holder.getView(R.id.iv_clear).setOnClickListener(TodayFragment.this);
            }

            @Override
            public void addResource(Item data) {
                items.add(data);
                mAdapter.notifyItemInserted(items.size() - 1);
            }
        };
        recyclerView.setAdapter(mAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
    }

    @Override
    public void onClick(View v) {
        Calendar calendar = Calendar.getInstance();
        switch (v.getId()) {
            case R.id.edit:
                mDrink.setEnabled(!enabled);
                mBreakfast.setEnabled(!enabled);
                mLaunch.setEnabled(!enabled);
                mDinner.setEnabled(!enabled);
                extra_cost11.setEnabled(!enabled);
                extra_cost_description.setEnabled(!enabled);
                if (enabled) {
                    MyToast.showMessage(mActivity, "取消编辑");
                } else {
                    MyToast.showMessage(mActivity, "开始编辑");
                }
                enabled = !enabled;
                break;
            case R.id.save:
                mDrink.setEnabled(false);
                mBreakfast.setEnabled(false);
                mLaunch.setEnabled(false);
                mDinner.setEnabled(false);
                extra_cost11.setEnabled(false);
                extra_cost_description.setEnabled(false);
                double breakfast = 0, launch = 0, dinner = 0, drink = 0, total = 0, extral_cost = 0;
                if (!TextUtils.isEmpty(mBreakfast.getText().toString()))
                    breakfast = Double.valueOf(mBreakfast.getText().toString());
                if (!TextUtils.isEmpty(mLaunch.getText().toString()))
                    launch = Double.valueOf(mLaunch.getText().toString());
                if (!TextUtils.isEmpty(mDinner.getText().toString()))
                    dinner = Double.valueOf(mDinner.getText().toString());
                if (!TextUtils.isEmpty(mDrink.getText().toString()))
                    drink = Double.valueOf(mDrink.getText().toString());
                if (!TextUtils.isEmpty(extra_cost11.getText().toString()))
                    extral_cost = Double.valueOf(extra_cost11.getText().toString());
                total = breakfast + dinner + drink + launch + extral_cost;
                today.setBreakfast_cost(breakfast);
                today.setLunch_cost(launch);
                today.setExtra_cost(extral_cost);
                today.setTotal(total);
                today.setDinner_cost(dinner);
                today.setDrink(drink);
                today.setExtra_cost_description(extra_cost_description.getText().toString());
                today.save();
                enabled = !enabled;
                MyToast.showMessage(mActivity, "保存成功");

                for (int i = 0; i < items.size(); i++) {
                    RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                    MyRecyclerAdapter.MyHolder childViewHolder = (MyRecyclerAdapter.MyHolder) recyclerView.getChildViewHolder(layoutManager.getChildAt(i));
                    items.get(i).setCause(((EditText)childViewHolder.getView(R.id.et_cause)).getText().toString());
                    items.get(i).setCost(Double.parseDouble(((EditText)childViewHolder.getView(R.id.et_cost)).getText().toString()));
                }

                // 删除以前的东西 存储现在东西
                Log.d(TAG, "onClick: + save:" + items.size());
                LitePal.saveAll(items);
                break;
            case R.id.left:
                timeDifference--;
                calendar.add(Calendar.DAY_OF_MONTH, timeDifference);
                java.util.Date time1 = calendar.getTime();
                time = format.format(time1);
                ContainerActivity.time = time;
                mTextView.setText(time);
                init();
                break;
            case R.id.right:
                timeDifference++;
                calendar.add(Calendar.DAY_OF_MONTH, timeDifference);
                java.util.Date date1 = calendar.getTime();
                time = format.format(date1);
                ContainerActivity.time = time;
                mTextView.setText(time);
                init();
                break;
            case R.id.fab_add:
                mAdapter.addResource(new Item(time));
                break;
            case R.id.iv_clear:
                int childAdapterPosition = recyclerView.getChildAdapterPosition((View) v.getParent());
                this.items.get(childAdapterPosition).delete();
                this.items.remove(childAdapterPosition);
                mAdapter.notifyDataSetChanged();
                break;
        }
    }


    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 && resultCode == 1 && data != null) {
            if(data.getStringExtra("date").equals("0-"))
                return;
            time = data.getStringExtra("date");
            ContainerActivity.time = time;
            mTextView.setText(time);
            init();
        }
    }

}
