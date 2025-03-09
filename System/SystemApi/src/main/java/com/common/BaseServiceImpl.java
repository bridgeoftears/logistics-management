package com.common;

import java.util.ArrayList;
import java.util.List;

//公共实现类
public abstract class BaseServiceImpl<T> implements BaseServiceInterface<T> {

    public abstract BaseDao<T> thisBaseDao();

    @Override
    public List<T> getAll(T t) {
        List<T> allT = new ArrayList<>();
        try {
            allT = this.thisBaseDao().getAll(t);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allT;
    }

    @Override
    public List<T> getAll2Page(T t) {
        List<T> allT = new ArrayList<>();
        try {
            allT = this.thisBaseDao().getAll2Page(t);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allT;
    }

    @Override
    public Integer count(T t) {
        return this.thisBaseDao().count(t);
    }

    @Override
    public T get(T t) {
        T TSearch = null;
        try {
            TSearch = this.thisBaseDao().get(t);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return TSearch;
    }

    @Override
    public String add(T t) {
        String isSuccess = "false";
        try {
            int resultNum = this.thisBaseDao().add(t);
            if (resultNum > 0) {
                isSuccess = "true";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "false-has-double";
        }
        return isSuccess;
    }


    @Override
    public String del(T t) {
        String isSuccess = "false";
        try {
            int resultNum = this.thisBaseDao().del(t);
            if (resultNum > 0) {
                isSuccess = "true";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    @Override
    public String update(T t) {
        String isSuccess = "false";
        try {
            int resultNum = this.thisBaseDao().update(t);
            if (resultNum > 0) {
                isSuccess = "true";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "false-has-double";
        }
        return isSuccess;
    }


}
