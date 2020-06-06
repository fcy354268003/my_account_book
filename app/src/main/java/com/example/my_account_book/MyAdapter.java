package com.example.my_account_book;

import android.content.Context;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

public class MyAdapter extends BaseAdapter {
    private List<String> mResource;
    private Context mContext;

    public MyAdapter(Context context, List<String> resource) {
        mResource = resource;
        mContext = context;
    }

    @Override
    public int getCount() {
        return mResource.size();
    }

    @Override
    public Object getItem(int position) {
        return mResource.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = LayoutInflater.from(mContext);
        View inflate = inflater.inflate(R.layout.spinner_item, null);
        TextView textView = inflate.findViewById(R.id.item);
        textView.setText(mResource.get(position));
        return inflate;
    }
}
