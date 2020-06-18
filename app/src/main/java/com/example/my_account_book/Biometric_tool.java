package com.example.my_account_book;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;

import androidx.annotation.NonNull;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.fragment.app.FragmentActivity;

import java.util.concurrent.Executor;

public class Biometric_tool {
    private static Handler handler = new Handler();
    private static Executor executor = new Executor() {
        @Override
        public void execute(Runnable command) {
            handler.post(command);
        }
    };
    public static void showBiometricPrompt(final Context context) {
        BiometricPrompt.PromptInfo info = new BiometricPrompt.PromptInfo.Builder()
                .setTitle("亲，要指纹验证登录哦!")
                .setNegativeButtonText("取消")
                .build();
        BiometricPrompt biometricPrompt = new BiometricPrompt((FragmentActivity) context, executor, new BiometricPrompt.AuthenticationCallback() {
            @Override
            public void onAuthenticationError(int errorCode, @NonNull CharSequence errString) {
                super.onAuthenticationError(errorCode, errString);
                MyToast.showMessage(context, "身份验证" + errString);
            }

            @Override
            public void onAuthenticationSucceeded(@NonNull BiometricPrompt.AuthenticationResult result) {
                super.onAuthenticationSucceeded(result);
                Intent intent = new Intent(context,ContainerActivity.class);
                context.startActivity(intent);
                ((FragmentActivity) context).finish();
            }

            @Override
            public void onAuthenticationFailed() {
                super.onAuthenticationFailed();
                MyToast.showMessage(context, "身份验证失败");
            }
        });
        biometricPrompt.authenticate(info);
    }

    public static boolean isBiometricAvailable(Context context) {
        BiometricManager biometricManager = BiometricManager.from(context);
        return biometricManager.canAuthenticate() == BiometricManager.BIOMETRIC_SUCCESS;
    }

}
