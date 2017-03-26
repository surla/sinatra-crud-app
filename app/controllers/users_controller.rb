class UsersController < ApplicationController

  get '/users/home' do
    @user = User.all
    erb :'/users/home'
  end

  get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
  end
end
