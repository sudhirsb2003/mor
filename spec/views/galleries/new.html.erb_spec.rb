require 'spec_helper'

describe "galleries/new" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :photo_file_name => "MyString",
      :photo_file_size => 1.5,
      :photo_content_type => "MyString",
      :event_id => 1
    ).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", galleries_path, "post" do
      assert_select "input#gallery_photo_file_name[name=?]", "gallery[photo_file_name]"
      assert_select "input#gallery_photo_file_size[name=?]", "gallery[photo_file_size]"
      assert_select "input#gallery_photo_content_type[name=?]", "gallery[photo_content_type]"
      assert_select "input#gallery_event_id[name=?]", "gallery[event_id]"
    end
  end
end
