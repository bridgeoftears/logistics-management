package com.common;

import java.util.List;

//公共方法接口
public interface BaseServiceInterface<T>  {
    //查询全部
    List<T> getAll(T t);
    //分页查询全部
    List<T> getAll2Page(T t);
    //查询总数
    Integer count(T t);
    //查询
    T get(T t);
    //增加
    String add(T t);

    //删除
    String del(T t);
    //修改
    String update(T t);

}
