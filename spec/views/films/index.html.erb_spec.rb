require 'rails_helper'

RSpec.describe "films/index", type: :view do
  before(:each) do
    assign(:films, [
      Film.create!(
        :name => "Name",
        :description => "Description",
        :url => "Url",
        :category => 2
      ),
      Film.create!(
        :name => "Name",
        :description => "Description",
        :url => "Url",
        :category => 2
      )
    ])
  end

  it "renders a list of films" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
