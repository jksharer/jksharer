require 'spec_helper'

describe "blog_types/show" do
  before(:each) do
    @blog_type = assign(:blog_type, stub_model(BlogType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
