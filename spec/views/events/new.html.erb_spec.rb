require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :agenda => "MyString",
      :total_seats => 1,
      :total_attendence => 1,
      :any_talk => false,
      :keynoter_name => "MyString",
      :talk_subject => "MyString",
      :address => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_agenda[name=?]", "event[agenda]"
      assert_select "input#event_total_seats[name=?]", "event[total_seats]"
      assert_select "input#event_total_attendence[name=?]", "event[total_attendence]"
      assert_select "input#event_any_talk[name=?]", "event[any_talk]"
      assert_select "input#event_keynoter_name[name=?]", "event[keynoter_name]"
      assert_select "input#event_talk_subject[name=?]", "event[talk_subject]"
      assert_select "textarea#event_address[name=?]", "event[address]"
    end
  end
end
