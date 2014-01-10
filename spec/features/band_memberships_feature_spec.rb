require 'spec_helper'

describe "creating a band membership" do
  describe "starting of the new memberships page" do
    before do
      @josey_scott = Musician.create name: 'Josey Scott'
      @saliva = Band.create name: 'Saliva'
      visit new_band_membership_path
    end
    it "can create a band membership" do
      select @josey_scott.name, {:from => 'musician_id'}
      select @saliva.name, {:from => 'band_id'}
      click_button 'submit'
      @josey_scott.bands.should include @saliva
    end
  end
end