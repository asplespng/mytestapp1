require 'rails_helper'
describe Admin::UsersController do
  describe 'PUT #update' do
    before (:each) do
      
    end
    context "with invalid role" do
      it "does not update user role" do
        @user = FactoryGirl.create :user, :user
        sign_in @user
        put :update, id: @user.id, user: {role: :administrator}
        @user.reload
        expect(@user.role).to eq('user')
      end
    end
    context "with valid role" do
      it "does update user role" do
        @user = FactoryGirl.create :user, :administrator
        sign_in @user
        put :update, id: @user.id, user: {role: :user}
        @user.reload
        expect(@user.role).to eq('user')
      end
    end
  end
end
