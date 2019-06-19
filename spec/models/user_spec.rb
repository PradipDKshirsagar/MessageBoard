require 'rails_helper'

RSpec.describe User do
  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new(password: "pradip1234").save
      expect(user).to eq(false)
    end

    it 'ensures password presence' do
      user = User.new(email: "pradip@gmail.com").save
      expect(user).to eq(false)
    end 

    # it 'should save successful' do
    #   user = User.new(email: "pradipkshirsagar1997@gmail.com", password: "pradip1234").save
    #   expect(user).to eq(true)
    # end     
  end

end
