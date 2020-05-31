package com.example.my_account_book;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
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
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_activity);
        mEditText = findViewById(R.id.use_name);
        mConfirm = findViewById(R.id.confirm);
        mConfirm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String uri = mEditText.getText().toString();
                if(uri.equals("fcy")){
                    Intent intent = new Intent(check_activity.this,MainActivity.class);
                    startActivity(intent);
                    finish();
//                    Toast.makeText(check_activity.this, "登陆成功", Toast.LENGTH_SHORT).show();
                    MyToast.showMessage(check_activity.this,"登陆成功");
                }
//                else Toast.makeText(check_activity.this, "登陆失败", Toast.LENGTH_SHORT).show();
                else MyToast.showMessage(check_activity.this, "登陆失败");
            }
        });

    }
}
