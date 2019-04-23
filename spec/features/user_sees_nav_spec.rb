require 'rails_helper'
describe 'as a user' do
  context 'when i visit my dashboard' do
    it 'sees a nav bar' do

      user_1 = User.create!(name: "Dan Briechle", workspace: "Briechle Custom Drums")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      click_on 'Demo Our App'

      expect(current_path).to eq ('/woodshop')

      within "#right" do
        expect(page).to have_link("Ply Shell Calculator")
        expect(page).to have_link("Solid Shell Calculator")
      end

      within "#left" do
        expect(page).to have_content(user_1.workspace)
      end
    end
  end
end
