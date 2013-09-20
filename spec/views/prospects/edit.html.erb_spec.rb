require 'spec_helper'

describe "prospects/edit" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :email => "MyString",
      :name => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospect_path(@prospect), "post" do
      assert_select "input#prospect_email[name=?]", "prospect[email]"
      assert_select "input#prospect_name[name=?]", "prospect[name]"
      assert_select "textarea#prospect_body[name=?]", "prospect[body]"
    end
  end
end
