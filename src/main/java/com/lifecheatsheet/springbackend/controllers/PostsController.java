package com.lifecheatsheet.springbackend.controllers;

import com.lifecheatsheet.springbackend.entities.UserDetails;
import com.lifecheatsheet.springbackend.dtos.PostEditDto;
import com.lifecheatsheet.springbackend.dtos.PostReadDto;
import com.lifecheatsheet.springbackend.dtos.PostCreateDto;
import com.lifecheatsheet.springbackend.exception.NotFoundException;
import com.lifecheatsheet.springbackend.services.PostService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1")
public class PostsController {
    @Autowired
    PostService postService;

    @Autowired
    ModelMapper modelMapper;

    @GetMapping("/categories/{categoryId}/posts")
    @ResponseStatus(HttpStatus.OK)
    public List<PostReadDto> getPostsByCategory(@PathVariable @Valid int categoryId) throws NotFoundException {
        return postService.getPostsByCategory(categoryId)
                .stream()
                .map(post -> modelMapper.map(post, PostReadDto.class))
                .collect(Collectors.toList());
    }

    @PostMapping("/categories/{categoryId}/posts")
    @ResponseStatus(HttpStatus.CREATED)
    public PostReadDto createPost(@PathVariable @Valid int categoryId,
                                  @RequestBody PostCreateDto newPost,
                                  Authentication authentication
    ) throws NotFoundException {
        UserDetails userDetails = (UserDetails) authentication.getDetails();
        return modelMapper.map(
                postService.createNewPost(categoryId, newPost, userDetails.getEmail()),
                PostReadDto.class
        );
    }

    @PutMapping("/categories/{categoryId}/posts/{postId}")
    @ResponseStatus(HttpStatus.CREATED)
    public PostReadDto createPost(@PathVariable @Valid int categoryId,
                                  @PathVariable @Valid int postId,
                                  @RequestBody PostEditDto postEdit,
                                  Authentication authentication
    ) throws NotFoundException {
        UserDetails userDetails = (UserDetails) authentication.getDetails();
        return modelMapper.map(
                postService.editPost(categoryId, postEdit, userDetails.getEmail()),
                PostReadDto.class
        );
    }

    @DeleteMapping("/categories/{categoryId}/posts/{postId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deletePost(@PathVariable @Valid int categoryId,
                           @PathVariable @Valid int postId,
                           Authentication authentication
    ) throws NotFoundException {
        UserDetails userDetails = (UserDetails) authentication.getDetails();
        postService.deletePost(postId, userDetails);
    }
}
