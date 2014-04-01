class BlogType < ActiveRecord::Base
  validates :name, presence: true
  has_many :blogs
end
