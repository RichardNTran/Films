require 'rails_helper'

RSpec.describe "films/edit", type: :view do
  before(:each) do
    @film = assign(:film, Film.create!(
      :name => "MyString",
      :description => "MyString",
      :url => "MyString",
      :category => 1
    ))
  end

  it "renders the edit film form" do
    render

    assert_select "form[action=?][method=?]", film_path(@film), "post" do

      assert_select "input#film_name[name=?]", "film[name]"

      assert_select "input#film_description[name=?]", "film[description]"

      assert_select "input#film_url[name=?]", "film[url]"

      assert_select "input#film_category[name=?]", "film[category]"
    end
  end
end
