package com.example.sweater.domain;


import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Length(max = 255, message = "Message too long")
    @NotBlank(message = "Text field can't be empty")
    private String text;
    @NotBlank(message = "Tag field can't be empty")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public Message() {
    }

    public Message(String text, String tag, User user) {
        this.text = text;
        this.tag = tag;
        this.author = user;
    }

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public String getTag() { return tag; }

    public User getAuthor() { return author; }

    public void setAuthor(User author) { this.author = author; }

    public String getFilename() { return filename; }

    public void setFilename(String filename) { this.filename = filename; }
}
