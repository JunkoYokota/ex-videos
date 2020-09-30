class Post < ApplicationRecord
  has_many_attached :posts
  mount_uploader :video, VideoUploader
  belongs_to :user
end
