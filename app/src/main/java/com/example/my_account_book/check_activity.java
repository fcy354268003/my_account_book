package com.example.my_account_book;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.litepal.LitePal;

import java.util.List;

public class check_activity extends AppCompatActivity {
    private EditText mEditText;
    private Button mConfirm;
    private static final String TAG = "check_activity";

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_activity);
        mEditText = findViewById(R.id.use_name);
        mConfirm = findViewById(R.id.confirm);
        mConfirm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String uri = mEditText.getText().toString();
                final SharedPreferences user = getSharedPreferences("user", MODE_PRIVATE);
                boolean isFirst = user.getBoolean("isFirst", true);
                if(isFirst){
                    AlertDialog.Builder builder = new AlertDialog.Builder(check_activity.this);
                    builder.setCancelable(false);
                    View inflate = LayoutInflater.from(check_activity.this).inflate(R.layout.dialog, null, false);
                    Button confirm = inflate.findViewById(R.id.confirm);
                    builder.setTitle("提示：");
                    builder.setMessage("是否将该用户标识作为你的永久用户标识？");
                    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            SharedPreferences.Editor edit = user.edit();
                            edit.putBoolean("isFirst",false);
                            edit.putString("uri",uri);
                            edit.apply();
                            toMain();
                        }
                    });
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            MyToast.showMessage(check_activity.this,"取消成功");
                        }
                    });
                    AlertDialog show = builder.show();
                    show.setIcon(R.drawable.warning);
                    show.show();
                }
                else if (uri.equals(user.getString("uri","#########"))){
                   toMain();
                }
                else MyToast.showMessage(check_activity.this, "登陆失败");
            }
        });
    }

    private void toMain() {
        Intent intent = new Intent(check_activity.this,MainActivity.class);
        startActivity(intent);
        finish();
        MyToast.showMessage(check_activity.this,"登陆成功");
    }
}
