require 'spec_helper'

describe "prospects/new" do
  before(:each) do
    assign(:prospect, stub_model(Prospect,
      :email => "MyString",
      :name => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospects_path, "post" do
      assert_select "input#prospect_email[name=?]", "prospect[email]"
      assert_select "input#prospect_name[name=?]", "prospect[name]"
      assert_select "textarea#prospect_body[name=?]", "prospect[body]"
    end
  end
end
