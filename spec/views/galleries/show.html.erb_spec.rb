require 'spec_helper'

describe "galleries/show" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :photo_file_name => "Photo File Name",
      :photo_file_size => 1.5,
      :photo_content_type => "Photo Content Type",
      :event_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo File Name/)
    rendered.should match(/1.5/)
    rendered.should match(/Photo Content Type/)
    rendered.should match(/1/)
  end
end
