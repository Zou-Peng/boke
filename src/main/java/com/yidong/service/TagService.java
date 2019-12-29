package com.yidong.service;

import com.yidong.entity.Tag;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface TagService {
    //添加标签
    Tag saveTag(Tag tag);

    //根据id查询标签
    Tag getTag(Long id);

    //根据名称查询标签
    Tag getTagByName(String name);

    //分页查询
    Page<Tag> listTag(Pageable pageable);

    //查询全部标签
    List<Tag> listTag();

    //根据集合id查询标签
    List<Tag> listTag(String ids);

    //跟据id修改标签
    Tag updateTag(Long id,Tag tag);

    //根据id删除标签
    void deleteTag(Long id);

    List<Tag> listTagTop(Integer size);
}
