require 'rails_helper'

RSpec.describe "bookmarks/new", type: :view do
  before(:each) do
    assign(:bookmark, Bookmark.new(
      :url => "MyString",
      :my_description => "MyString",
      :read_flag => false,
      :title => "MyString",
      :favicon => "MyString",
      :object_description => "MyText",
      :object_image => "MyText"
    ))
  end

  it "renders new bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmarks_path, "post" do

      assert_select "input#bookmark_url[name=?]", "bookmark[url]"

      assert_select "input#bookmark_my_description[name=?]", "bookmark[my_description]"

      assert_select "input#bookmark_read_flag[name=?]", "bookmark[read_flag]"

      assert_select "input#bookmark_title[name=?]", "bookmark[title]"

      assert_select "input#bookmark_favicon[name=?]", "bookmark[favicon]"

      assert_select "textarea#bookmark_object_description[name=?]", "bookmark[object_description]"

      assert_select "textarea#bookmark_object_image[name=?]", "bookmark[object_image]"
    end
  end
end
