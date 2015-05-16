require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      :username => "MyString",
      :email => "MyString",
      :name => "MyString",
      :password => "MyString",
      :photo => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_username[name=?]", "client[username]"

      assert_select "input#client_email[name=?]", "client[email]"

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_password[name=?]", "client[password]"

      assert_select "input#client_photo[name=?]", "client[photo]"

      assert_select "input#client_location[name=?]", "client[location]"
    end
  end
end
