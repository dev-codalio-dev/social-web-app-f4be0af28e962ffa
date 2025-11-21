# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :organization
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  rhino_owner :organization
  rhino_references [ :author, :organization ]
end
