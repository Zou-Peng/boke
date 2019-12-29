package com.yidong.service;

import com.yidong.entity.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CommentService {


    List<Comment> listCommentByBlogId(Long blogId);

    //添加评论
    Comment saveComment(Comment comment);

    //后台分页查询评论
    Page<Comment> listComment(Pageable pageable);

    //后台删除评论
    void deleteComment(Long id);

    //后台查看评论详情跳转
    Comment getComment(Long id);
}
