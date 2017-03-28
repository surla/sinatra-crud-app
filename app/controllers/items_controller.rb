class ItemsController < ApplicationController

  get 'items/new' do
    erb :'items/new'
  end

  post '/items' do

  end
end
