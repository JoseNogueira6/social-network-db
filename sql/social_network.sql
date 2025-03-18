Table users {
  id INT [pk, increment]
  username VARCHAR(255) [not null, unique]
  email VARCHAR(255) [not null, unique]
  password_hash VARCHAR(255) [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table posts {
  id INT [pk, increment]
  user_id INT [not null]
  content TEXT [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table friends {
  id INT [pk, increment]
  user_id INT [not null]
  friend_id INT [not null]
  status ENUM('pending', 'accepted', 'rejected') [default: 'pending']
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table comments {
  id INT [pk, increment]
  post_id INT [not null]
  user_id INT [not null]
  content TEXT [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table likes {
  id INT [pk, increment]
  user_id INT [not null]
  post_id INT
  comment_id INT
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Ref: users.id < posts.user_id
Ref: users.id < friends.user_id
Ref: users.id < friends.friend_id
Ref: posts.id < comments.post_id
Ref: users.id < comments.user_id
Ref: users.id < likes.user_id
Ref: posts.id < likes.post_id
Ref: comments.id < likes.comment_id