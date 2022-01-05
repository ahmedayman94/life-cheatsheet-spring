package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.config.UserDetails;
import com.lifecheatsheet.springbackend.dtos.PostEditDto;
import com.lifecheatsheet.springbackend.entities.Category;
import com.lifecheatsheet.springbackend.entities.Post;
import com.lifecheatsheet.springbackend.dtos.PostCreateDto;
import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.exception.NotFoundException;
import com.lifecheatsheet.springbackend.repositories.PostRepository;
import com.lifecheatsheet.springbackend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PostService {
    @Autowired
    CategoryService categoryService;

    @Autowired
    PostRepository postRepository;

    @Autowired
    private UserRepository userRepository;

    public Post getPostById(int postId) throws NotFoundException {
        Optional<Post> post = postRepository.findById(postId);
        if (post.isEmpty()) throw new NotFoundException("Post does not exist");

        return post.get();
    }

    public List<Post> getPostsByCategory(int categoryId) throws NotFoundException {
        Category category = categoryService.getCategoryById(categoryId);
        return postRepository.findByCategory(category);
    }

    public Post createNewPost(int categoryId,
                              PostCreateDto postCreateDto,
                              String authorEmail
    ) throws NotFoundException {
        Post newPost = createNewPostFromDto(
                categoryService.getCategoryById(categoryId),
                userRepository.findByEmail(authorEmail),
                postCreateDto
        );

        return postRepository.saveAndFlush(newPost);
    }

    public Post editPost(int categoryId, PostEditDto postEdit, String email) throws NotFoundException {
        Category categoryFromDb = categoryService.getCategoryById(categoryId);

        return findAndEditPost(postEdit, categoryFromDb);
    }

    public void deletePost(int postId, UserDetails userDetails) throws NotFoundException {
        postRepository.delete(getPostById(postId));
    }

    private Post createNewPostFromDto(Category category, User author, PostCreateDto postCreateDto) {
        Post newPost = new Post();

        newPost.setCreatedAt(new Date());
        newPost.setLastEditedAt(new Date());
        newPost.setTitle(postCreateDto.getTitle());
        newPost.setContent(postCreateDto.getContent());
        newPost.setCategory(category);
        newPost.setAuthor(author);

        return newPost;
    }

    private Post findAndEditPost(PostEditDto postEdit, Category category) throws NotFoundException {
        Post postFromDb = getPostById(postEdit.getId());

        postFromDb.setTitle(postEdit.getTitle());
        postFromDb.setContent(postEdit.getContent());
        postFromDb.setCategory(category);
        postFromDb.setLastEditedAt(new Date());

        return postRepository.saveAndFlush(postFromDb);
    }
}
