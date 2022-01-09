CREATE TABLE categories (
    category_id     SERIAL PRIMARY KEY,
    title           varchar(30) NOT NULL,
    author_id		INT NOT NULL,
    CONSTRAINT FK_USER
      FOREIGN KEY(author_id)
	  REFERENCES users(user_id),
    created_at      timestamptz NOT NULL
);

CREATE TABLE posts (
    post_id         SERIAL PRIMARY KEY,
    title           varchar(200) NOT NULL,
    content         varchar(10000) NOT NULL,
    author_id		INT NOT NULL,
    category_id		INT NOT NULL,
    CONSTRAINT FK_USER
          FOREIGN KEY(author_id)
          REFERENCES users(user_id),
    CONSTRAINT FK_CATEGORY
          FOREIGN KEY(category_id)
          REFERENCES categories(category_id),
    created_at      timestamptz NOT NULL,
    last_edited_at  timestamptz NOT NULL
);