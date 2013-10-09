require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Components'" do
      visit '/static/home'
      expect(page).to have_content('Components')
    end
  
  end
end  