package com.yidong.service;

import com.yidong.encap.BlogQuery;
import com.yidong.entity.Blog;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface BlogService {
    //根据id查询
    Blog getBlog(Long id);

    //分页查询
    Page<Blog> listBlog(Pageable pageable, BlogQuery blog);

    //添加博客
    Blog saveBlog(Blog blog);

    //修改博客
    Blog updateBlog(Long id,Blog blog);

    //删除博客
    void deleteBlog(Long id);

    //前端博客分页查询
    Page<Blog> listBlog(Pageable pageable);

    //前端博客推荐分页查询
    List<Blog> listRecommendBlogTop(Integer size);

    //前端搜索查询
    Page<Blog> listBlogSearch (String query,Pageable pageable);

    //前端博客详情内容展示和转换为html
    Blog getAndConvert(Long id);

    //前端标签页面
    Page<Blog> listBlogByTag(Long tagId,Pageable pageable);

    //博客归档查询
    Map<String,List<Blog>> archiveBlog();

    //博客归档条数
    Long countBlog();
}
