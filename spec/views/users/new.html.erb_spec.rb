require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :bio => "MyText",
      :phone => "MyString",
      :preferred_contact => "MyString",
      :login => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "textarea#user_bio", :name => "user[bio]"
      assert_select "input#user_phone", :name => "user[phone]"
      assert_select "input#user_preferred_contact", :name => "user[preferred_contact]"
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_email", :name => "user[email]"
    end
  end
end
