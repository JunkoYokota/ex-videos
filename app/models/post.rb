class Post < ApplicationRecord
  has_rich_text :content

  has_many_attached :posts
  has_one_attached :video
  belongs_to :user

  def url
    helpers = Rails.application.routes.url_helpers
    helpers.rails_representation_url(video.variant({}), only_path: true)
  end

end
