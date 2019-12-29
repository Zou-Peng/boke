package com.yidong.service;

import com.yidong.entity.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface TypeService {

    //添加分类
    Type saveType(Type type);

    //根据id查询分类
    Type getType(Long id);

    //根据分类名称查询分类
    Type getTypeByName(String name);

    //分页查询
    Page<Type> listType(Pageable pageable);

    //查询全部分类
    List<Type> listType();

    //前端获取分类标签
    List<Type> listTypeTop(Integer size);

    //根据id修改分类
    Type updateType(Long id,Type type);

    //删除分类
    void deleteType(Long id);
}
