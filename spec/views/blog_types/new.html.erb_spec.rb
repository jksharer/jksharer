require 'spec_helper'

describe "blog_types/new" do
  before(:each) do
    assign(:blog_type, stub_model(BlogType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new blog_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blog_types_path, "post" do
      assert_select "input#blog_type_name[name=?]", "blog_type[name]"
    end
  end
end
