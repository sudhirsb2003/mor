require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :agenda => "Agenda",
      :total_seats => 1,
      :total_attendence => 2,
      :any_talk => false,
      :keynoter_name => "Keynoter Name",
      :talk_subject => "Talk Subject",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Agenda/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/Keynoter Name/)
    rendered.should match(/Talk Subject/)
    rendered.should match(/MyText/)
  end
end
