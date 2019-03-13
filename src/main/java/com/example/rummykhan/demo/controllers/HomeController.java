package com.example.rummykhan.demo.controllers;

import com.example.rummykhan.demo.models.Post;
import com.example.rummykhan.demo.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Optional;

@Controller
class HomeController {

    private final PostRepository postRepository;

    @Autowired
    public HomeController(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {

        System.out.println(postRepository.findAll());

        model.addAttribute("posts", postRepository.findAll());

        return "index";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Model model) {

        Post p = new Post();
        p.setTitle("Test title");
        p.setSlug("test-title");
        p.setText("lorem ipsum sit amit");
        p.setCreatedBy("rummykhan");
        p.setCreatedAt("2019-01-01 12:00:00");

        if(!postRepository.findByTitle("Test title").isPresent()){
            postRepository.save(p);
            model.addAttribute("message", "Record created");
        }else{
            model.addAttribute("message", "Record already there");
        }

        return "test";
    }

}