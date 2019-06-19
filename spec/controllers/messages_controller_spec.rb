require 'rails_helper'

RSpec.describe MessagesController do
  
  context 'GET #index' do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template(:index)
    end
  end

  context 'GET #new' do
    before(:each) do 
      @user = User.create(email: "ddd@d.com", password:"pradip123")
      post user_session_url(@user)
    end
    it "has a status code" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  # context 'POST #create' do
  #   before(:each) do 
  #     @user = User.create(email: "ddd@d.com", password:"pradip123")
  #     sign_in @user
  #   end

  #   it "has a 201 status code" do
  #     post :create, params: {} 
  #     expect(response.status).to eq(201)
  #     expect(response).to render_template(:new)
  #   end
  # end

  context 'GET #show' do
    before(:each) do 
      @user = User.create(email: "ddd@d.com", password:"pradip123")
      @m = Message.create(title: "Pradip Message", description: "Good Person", user_id: @user.id)
    end

    it "has a 200 status code" do
      get :show, params: {id: @m.id}
      expect(response.status).to eq(200)
      expect(response).to render_template(:show)
    end
  end
end
