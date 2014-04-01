require 'spec_helper'

describe "blog_types/index" do
  before(:each) do
    assign(:blog_types, [
      stub_model(BlogType,
        :name => "Name"
      ),
      stub_model(BlogType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of blog_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
