require 'rails_helper'

RSpec.describe "films/show", type: :view do
  before(:each) do
    @film = assign(:film, Film.create!(
      :name => "Name",
      :description => "Description",
      :url => "Url",
      :category => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
  end
end
