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

      click_on 'Ply Calculator'

      # As a user when I click the ply calculator on I am taken to the ply calculator form.
      expect(current_path).to eq('ply_path')
      diameter = "14X8"
      species = "Maple"
      thickness = "1/8"
      # I input the size of the drum, the species of the wood the thickness of the material.
      fillin 'size', with: size
      fillin 'species', with: species
      fillin 'thickness', with: thickness
      click_on 'Calculate'
      # When I click calculate I am given back the cut dimensions for the veneer.
      expect(page).to have_content("Your dimensions are: 46x10")
      expect(page).to have_button("Add to cut list")
    end
  end
end
