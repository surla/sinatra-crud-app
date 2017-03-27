class UsersController < ApplicationController

  get '/users/home' do
    @user = User.find(email: params[:email])
    erb :'/users/home'
  end

  get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect :'/users/home'
    else
      redirect :'/signup'
    end
  end


end
