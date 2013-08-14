require 'spec_helper'

describe "galleries/edit" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :photo_file_name => "MyString",
      :photo_file_size => 1.5,
      :photo_content_type => "MyString",
      :event_id => 1
    ))
  end

  it "renders the edit gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do
      assert_select "input#gallery_photo_file_name[name=?]", "gallery[photo_file_name]"
      assert_select "input#gallery_photo_file_size[name=?]", "gallery[photo_file_size]"
      assert_select "input#gallery_photo_content_type[name=?]", "gallery[photo_content_type]"
      assert_select "input#gallery_event_id[name=?]", "gallery[event_id]"
    end
  end
end
