require 'spec_helper'

describe "galleries/index" do
  before(:each) do
    assign(:galleries, [
      stub_model(Gallery,
        :photo_file_name => "Photo File Name",
        :photo_file_size => 1.5,
        :photo_content_type => "Photo Content Type",
        :event_id => 1
      ),
      stub_model(Gallery,
        :photo_file_name => "Photo File Name",
        :photo_file_size => 1.5,
        :photo_content_type => "Photo Content Type",
        :event_id => 1
      )
    ])
  end

  it "renders a list of galleries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo File Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Photo Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
