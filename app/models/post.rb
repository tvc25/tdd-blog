class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true

  def no_posts
    return 'No posts yet!' if comments.none?
  end
end
