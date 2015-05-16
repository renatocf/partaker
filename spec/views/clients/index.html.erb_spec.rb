require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :username => "Username",
        :email => "Email",
        :name => "Name",
        :password => "Password",
        :photo => "Photo",
        :location => "Location"
      ),
      Client.create!(
        :username => "Username",
        :email => "Email",
        :name => "Name",
        :password => "Password",
        :photo => "Photo",
        :location => "Location"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
