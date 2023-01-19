# README

Simple Rails API that contains Users, Posts and Comments.

Associations
User has many post
User has many comment
Post has many comment
Comment belongs to user and post

Comment also has a non-foreign key column that is called comment_id in case this comment is a reply.
