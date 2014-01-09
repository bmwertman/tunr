require 'spec_helper'

describe MusiciansController do
 describe "Given a musician name" do
  before do
    @name = "Diana Ross"
  end
  describe "the new musician page" do
    before do
     visit new_musician_path
    end
    it "creates a new musician from the form" do
      fill_in :name, with: @name
      click_button "submit"
      current_path.should == musicians_path
      page.should have_content(@name)
    end
  end
 end
end