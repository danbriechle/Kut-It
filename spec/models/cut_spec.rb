require 'rails_helper'

describe Cut do
  describe 'validations' do
    it { should validate_presence_of(:species) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:length) }
    it { should validate_presence_of(:height) }
    it { should validate_presence_of(:thickness) }
    it { should validate_presence_of(:scarf_angle) }
    it { should validate_presence_of(:drumsize) }
  end
  describe 'relationships' do
    it { should belong_to(:user) }
  end
end
