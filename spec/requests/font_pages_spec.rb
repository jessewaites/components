require 'spec_helper'

describe "Font Pages" do

  describe "Individual Font Page" do

    it "should have the content 'HTML link'" do
      visit '/fonts/3'
      expect(page).to have_content('classic')
    end
  
  end
end  





# describe "FontPages" do
#   describe "GET /font_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get font_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
