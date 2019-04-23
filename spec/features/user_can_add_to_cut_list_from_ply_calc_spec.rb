require 'rails_helper'
describe 'as a user' do
  context 'when i visit the ply calculator' do
    it 'can calculate ply size' do
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

      click_on 'Ply Shell Calculator'


      expect(current_path).to eq(ply_new_path)
      diameter = "18"
      depth = "12"
      species = "Marble Wood"
      thickness = "1/8"
      slop = "0"

      fill_in 'ply_diameter', with: diameter
      fill_in 'ply_depth', with: depth
      fill_in 'ply_species', with: species
      fill_in 'ply_thickness', with: thickness
      fill_in 'ply_slop', with: slop
      click_on 'Calculate'

      length = '58"'
      width  = '14"'

      expect(page).to have_content("Your dimensions are: #{length}x#{width}")
      expect(page).to have_button("Add to cut list")

      click_on 'Add to cut list'

      expect(current_path).to eq('/woodshop')

      within '#cut_list' do
        expect(page).to have_content("18X12")
        expect(page).to have_content("Marble Wood")
        expect(page).to have_content("#{length}x#{width}")
      end
    end
  end
end
