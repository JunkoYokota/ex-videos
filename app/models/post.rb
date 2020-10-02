class Post < ApplicationRecord
  has_rich_text :content

  has_many_attached :posts
  belongs_to :user, optional: true
end
