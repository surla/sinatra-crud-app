class RegistrationsController < ApplicationController

  get '/signup' do
    erb :'/registrations/signup'
  end

  post '/signup' do
    @user = User.new(email: params["email"], password: params["password"])
    @user.save
    session[:id] = @user.id
    redirect '/users/home'
  end
end
