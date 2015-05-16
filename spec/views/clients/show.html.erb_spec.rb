require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :username => "Username",
      :email => "Email",
      :name => "Name",
      :password => "Password",
      :photo => "Photo",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/Location/)
  end
end
