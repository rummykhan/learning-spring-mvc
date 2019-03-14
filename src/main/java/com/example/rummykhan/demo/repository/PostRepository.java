package com.example.rummykhan.demo.repository;

import com.example.rummykhan.demo.models.Post;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface PostRepository extends CrudRepository<Post, Integer> {

    Optional<Post> findByTitle(String title);

    Optional<Post> findBySlug(String slug);
}
