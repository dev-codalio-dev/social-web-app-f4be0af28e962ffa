# frozen_string_literal: true

class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed_user, class_name: "User"
  belongs_to :organization

  rhino_owner :organization
  rhino_references [ :follower, :followed_user, :organization ]
end
