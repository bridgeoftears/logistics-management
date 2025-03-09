package com.common;

import java.util.List;

public interface BaseDao<T> {
    //查询全部
    List<T> getAll(T t);
    //分页查询全部
    List<T> getAll2Page(T t);
    //查询总数
    int count(T t);
    //查询
    T get(T t);
    //增加
    int add(T t);
    //批量新增
    int addS(List<T> t);
    //删除
    int del(T t);
    //修改
    int update(T t);
}
