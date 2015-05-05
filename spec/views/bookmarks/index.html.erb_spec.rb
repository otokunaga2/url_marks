require 'rails_helper'

RSpec.describe "bookmarks/index", type: :view do
  before(:each) do
    assign(:bookmarks, [
      Bookmark.create!(
        :url => "Url",
        :my_description => "My Description",
        :read_flag => false,
        :title => "Title",
        :favicon => "Favicon",
        :object_description => "MyText",
        :object_image => "MyText"
      ),
      Bookmark.create!(
        :url => "Url",
        :my_description => "My Description",
        :read_flag => false,
        :title => "Title",
        :favicon => "Favicon",
        :object_description => "MyText",
        :object_image => "MyText"
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "My Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Favicon".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
