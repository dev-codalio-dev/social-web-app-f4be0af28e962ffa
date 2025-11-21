# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :commenter, class_name: "User"
  belongs_to :commented_post, class_name: "Post"

  rhino_owner :commented_post
  rhino_references [ :commenter, :commented_post ]
end
