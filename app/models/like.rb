# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :liker, class_name: "User"
  belongs_to :liked_post, class_name: "Post"

  rhino_owner :liked_post
  rhino_references [ :liker, :liked_post ]
end
