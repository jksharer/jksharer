class Blog < ActiveRecord::Base
  validates :title, :content, presence: :true
  
  belongs_to :resource_type
  belongs_to :blog_type
end
