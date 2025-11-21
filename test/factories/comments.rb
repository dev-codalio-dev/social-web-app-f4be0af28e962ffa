# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    commenter { nil }
    commented_post { nil }
    content { "MyText" }
  end
end
