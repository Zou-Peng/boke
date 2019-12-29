package com.yidong.controller.admin;

import com.yidong.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class CommentController {

    @Autowired
    private CommentService commentService;

    //分页查询并跳转到标签页面
    @GetMapping("/comments")
    public String tags(@PageableDefault(size = 5,sort = {"id"},direction = Sort.Direction.DESC)
                               Pageable pageable, Model model){
        model.addAttribute("page",commentService.listComment(pageable));
        return "admin/comment";
    }

    @GetMapping("comments/{id}/delete")
    public String deleteComment(@PathVariable("id") Long id, RedirectAttributes attributes){
        commentService.deleteComment(id);
        attributes.addFlashAttribute("message","删除成功");
        return "redirect:/admin/comments";
    }

    @GetMapping("comments/{id}/edit")
    public String editInput(@PathVariable("id") Long id,Model model){
        model.addAttribute("comment",commentService.getComment(id));
        return "admin/comment-input";
    }


}
