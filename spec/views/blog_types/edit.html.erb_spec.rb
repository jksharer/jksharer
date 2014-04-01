require 'spec_helper'

describe "blog_types/edit" do
  before(:each) do
    @blog_type = assign(:blog_type, stub_model(BlogType,
      :name => "MyString"
    ))
  end

  it "renders the edit blog_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blog_type_path(@blog_type), "post" do
      assert_select "input#blog_type_name[name=?]", "blog_type[name]"
    end
  end
end
