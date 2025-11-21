# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    author { nil }
    organization { nil }
    content { "MyText" }
    image_url { "MyString" }
  end
end
