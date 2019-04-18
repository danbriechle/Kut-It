require 'rails_helper'
describe 'as a user' do
  context 'when i visit the root' do
    it 'sees welcome message' do
      user_1 = User.create!(name: "Dan Briechle", workspace: "Briechle Custom Drums")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      expect(page).to have_content("Welcome to Kut it!")
      expect(page).to have_button("login")
    end
  end
end
