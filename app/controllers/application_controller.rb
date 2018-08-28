
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

    erb :index
  end

  get '/posts/new' do


    erb :new
  end

  get '/posts' do
    @posts = posts.all

    erb :index
  end

  get '/posts/:id' do
    @post = params[:posts/:id]

    erb :show
  end

  get '/posts/:id/edit' do


    erb :edit
  end

  get '/posts/:id/delete' do
    
  end
end
