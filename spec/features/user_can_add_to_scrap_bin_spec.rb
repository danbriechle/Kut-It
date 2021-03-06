require 'rails_helper'
describe 'as a user' do
  context 'when i visit my wood shop' do
    it 'can add scraps to the scrap bin' do
      user_1 = User.create!(name: "Dan Briechle", workspace: "Briechle Custom Drums")
      scrap_1 = Scrap.create!(species: "Alder", shell_type: 0, length: "46", width: "3", thickness: "3/4", user: user_1)
      scrap_2 = Scrap.create!(species: "Birch", shell_type: 0, length: "36", width: "8", thickness: "5/8", user: user_1)
      scrap_3 = Scrap.create!(species: "Cherry", shell_type: 1, length: "67", width: "18", thickness: "1/16", user: user_1)
      scrap_4 = Scrap.create!(species: "Rosewood", shell_type: 1, length: "41", width: "8", thickness: "1/8", user: user_1)
      cut_1 = Cut.create!(species: "Rosewood", shell_type: 1, length: "46", height: "8", drumsize: "14x6", thickness: "1/16", scarf_angle: "90", user: user_1)
      cut_4 = Cut.create!(species: "Mahogany", shell_type: 1, length: "34", height: "8", drumsize: "10x6", thickness: "1/16", scarf_angle: "90", user: user_1)
      cut_3 = Cut.create!(species: "Wenge", shell_type: 0, length: "46", height: "8", drumsize: "14x6", thickness: "3/4", scarf_angle: "20", user: user_1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      click_on 'Demo Our App'

      expect(current_path).to eq('/woodshop')

      within '#scraps' do
        expect(page).to have_link('Add Scrap')
      end

      click_on 'Add Scrap'

      expect(current_path).to eq(scrap_new_path)
      width = '14'
      length = '31'
      species = "Marble Wood"
      thickness = '1/8"'


      fill_in 'scrap_length', with: length
      fill_in 'scrap_width', with: width
      fill_in 'scrap_thickness', with: thickness
      fill_in 'scrap_species', with: species
      select "Ply", :from => "scrap_shell_type"

      click_on 'Add Scrap'

      expect(current_path).to eq('/woodshop')
      width_with_inches = '14"'
      length_with_inches = '31"'
      thickness_with_inches = '1/8"'


      within '#scraps' do
        expect(page).to have_content("#{species} #{length_with_inches}x#{width_with_inches}x#{thickness_with_inches}")
      end

      expect(page).to have_content("#{species} has been added to the scrap bin")

      click_on 'Add Scrap'

      expect(current_path).to eq(scrap_new_path)
      width = '14'
      species = "Marble Wood"
      thickness = '1/8"'



      fill_in 'scrap_width', with: width
      fill_in 'scrap_thickness', with: thickness
      fill_in 'scrap_species', with: species


      click_on 'Add Scrap'

      expect(page).to have_content("We're sorry this scrap could not be added to the scrap bin")
    end
  end
end
