require 'rails_helper'
describe 'as a user' do
  context 'when i visit my woodshop' do
    it 'can delete cut' do
      user_1 = User.create!(name: "Dan Briechle", workspace: "Briechle Custom Drums")
      scrap_1 = Scrap.create!(species: "Alder", shell_type: 0, length: "46", width: "3", thickness: "3/4", user: user_1)
      scrap_2 = Scrap.create!(species: "Birch", shell_type: 0, length: "36", width: "8", thickness: "5/8", user: user_1)
      scrap_3 = Scrap.create!(species: "Cherry", shell_type: 1, length: "67", width: "18", thickness: "1/16", user: user_1)
      scrap_4 = Scrap.create!(species: "Rosewood", shell_type: 1, length: "41", width: "8", thickness: "1/8", user: user_1)
      cut_1 = Cut.create!(species: "Rosewood", shell_type: 1, length: "46", height: "8", drumsize: "14x6", thickness: "1/16", scarf_angle: "90", user: user_1)
      cut_4 = Cut.create!(species: "Mahogany", shell_type: 1, length: "34", height: "6", drumsize: "10x4", thickness: "1/16", scarf_angle: "90", user: user_1)
      cut_3 = Cut.create!(species: "Wenge", shell_type: 0, length: "48", height: "10", drumsize: "14x8", thickness: "3/4", scarf_angle: "20", user: user_1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      click_on 'Demo Our App'

      expect(current_path).to eq('/woodshop')

      within "#cut-#{cut_1.id}" do
        expect(page).to have_link("Finished")
        click_on "Finished"
      end

      expect(current_path).to eq(woodshop_path)

      expect(page).to have_content("#{cut_1.drumsize} #{cut_1.species} complete!")
    end
  end
end
