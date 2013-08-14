require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :agenda => "Agenda",
        :total_seats => 1,
        :total_attendence => 2,
        :any_talk => false,
        :keynoter_name => "Keynoter Name",
        :talk_subject => "Talk Subject",
        :address => "MyText"
      ),
      stub_model(Event,
        :name => "Name",
        :agenda => "Agenda",
        :total_seats => 1,
        :total_attendence => 2,
        :any_talk => false,
        :keynoter_name => "Keynoter Name",
        :talk_subject => "Talk Subject",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Agenda".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Keynoter Name".to_s, :count => 2
    assert_select "tr>td", :text => "Talk Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
