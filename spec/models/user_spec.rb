require 'rails_helper'

describe User do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:workplace) }
  end
  describe 'relationships' do
    it { should have_many(:projects) }
  end
end
