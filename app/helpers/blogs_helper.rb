module BlogsHelper
  def resource_checked?(blog, radio_name)
    !blog.resource_type.nil? && (blog.resource_type.name == radio_name)
  end
  
  def blog_checked?(blog, radio_name)
    !blog.resource_type.nil? && (blog.blog_type.name == radio_name)
  end
end
