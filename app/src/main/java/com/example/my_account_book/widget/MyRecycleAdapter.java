package com.example.my_account_book.widget;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.my_account_book.R;

import java.util.List;

public class MyRecycleAdapter extends RecyclerView.Adapter<MyRecycleAdapter.MyViewHolder> {

    private List<Integer> images;
    private List<String> types;
    private List<String> costs;

    public MyRecycleAdapter(List<Integer> images, List<String> types, List<String> costs) {
        this.costs = costs;
        this.images = images;
        this.types = types;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycle__item_view, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        holder.image.setImageResource(images.get(position));
        holder.cost.setText(costs.get(position));
        holder.type.setText(types.get(position));
    }

    @Override
    public int getItemCount() {
        return costs.size();
    }

    class MyViewHolder extends RecyclerView.ViewHolder {
        private TextView type;
        private TextView cost;
        private ImageView image;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            type = itemView.findViewById(R.id.type);
            cost = itemView.findViewById(R.id.cost);
            image = itemView.findViewById(R.id.imagine);
        }
    }


}
