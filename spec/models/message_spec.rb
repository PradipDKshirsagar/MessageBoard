require 'rails_helper'

RSpec.describe Message do
  context 'validation tests' do
    it 'ensures title presence' do
      message = Message.new().save
      expect(message).to eq(false)
    end
  end
end
