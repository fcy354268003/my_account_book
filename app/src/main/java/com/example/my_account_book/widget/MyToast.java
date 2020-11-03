package com.example.my_account_book.widget;

import android.content.Context;
import android.widget.Toast;

public class MyToast {
    private static Toast mToast;

    public static void showMessage(Context context, String message) {
      if(mToast == null){
          mToast = Toast.makeText(context,message,Toast.LENGTH_SHORT);
      }else {
          mToast.setText(message);
      }
      mToast.show();
    }
}
