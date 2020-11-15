package com.example.my_account_book.LiveData;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import java.util.HashMap;
import java.util.Map;

public class LiveDataManager {
    public static LiveDataManager manager;
    private Map<String, MutableLiveData<Object>> dataMap = new HashMap<>();

    private LiveDataManager() {
    }

    public static LiveDataManager getInstance() {
        if (manager == null) {
            manager = new LiveDataManager();
        }
        return manager;
    }

    public <T> MutableLiveData<T> with(String key, Class<T> tClass) {
        if(!dataMap.containsKey(key)){
            dataMap.put(key,new MutableLiveData<>(tClass));
        }
        return (MutableLiveData<T>) dataMap.get(key);
    }
}
