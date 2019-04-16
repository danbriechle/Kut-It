require 'rails_helper'

describe Scrap do
  describe 'validations' do
    it { should validate_presence_of(:species) }
    it { should validate_presence_of(:shell_type) }
    it { should validate_presence_of(:length) }
    it { should validate_presence_of(:width) }
    it { should validate_presence_of(:thickness) }
  end
  describe 'relationships' do
    it { should belong_to(:user) }
  end
end
