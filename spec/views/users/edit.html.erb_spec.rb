require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :bio => "MyText",
      :phone => "MyString",
      :preferred_contact => "MyString",
      :login => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "textarea#user_bio", :name => "user[bio]"
      assert_select "input#user_phone", :name => "user[phone]"
      assert_select "input#user_preferred_contact", :name => "user[preferred_contact]"
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_email", :name => "user[email]"
    end
  end
end
