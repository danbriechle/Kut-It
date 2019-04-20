require 'rails_helper'
describe 'as a user' do
  context 'when i visit my dashboard' do
    it 'sees a nav bar' do
      user_1 = User.create!(name: "Dan Briechle", workspace: "Briechle Custom Drums")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/woodshop"

      within ".nav" do
        expect(page).to hav_link("Ply")
        expect(page).to hav_link("Steam")
      end
    end
  end
end
