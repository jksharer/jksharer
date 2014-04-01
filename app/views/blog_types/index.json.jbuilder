json.array!(@blog_types) do |blog_type|
  json.extract! blog_type, :name
  json.url blog_type_url(blog_type, format: :json)
end