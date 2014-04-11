module ApplicationHelper
  require "sessions_helper.rb" 
  
  def full_title(page_title)
    base_title = "Zk's Shared Blog"
    # page_title.empty? base_title:"#{page_title} | #{base_title}"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
