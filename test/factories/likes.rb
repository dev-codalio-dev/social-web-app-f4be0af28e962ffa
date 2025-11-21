# frozen_string_literal: true

FactoryBot.define do
  factory :like do
    liker { nil }
    liked_post { nil }
  end
end
