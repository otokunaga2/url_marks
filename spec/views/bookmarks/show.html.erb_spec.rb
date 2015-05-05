require 'rails_helper'

RSpec.describe "bookmarks/show", type: :view do
  before(:each) do
    @bookmark = assign(:bookmark, Bookmark.create!(
      :url => "Url",
      :my_description => "My Description",
      :read_flag => false,
      :title => "Title",
      :favicon => "Favicon",
      :object_description => "MyText",
      :object_image => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/My Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Favicon/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
