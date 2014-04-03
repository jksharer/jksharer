class ResourceType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :blogs
end
