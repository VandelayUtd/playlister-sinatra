class SongsController < ApplicationController
    get '/songs' do
        @songs = Song.all 
        erb :"/songs/index"
    end

    get '/songs/new' do
        
        erb :"/songs/new"
    end

    get '/songs/:slug' do
        @slug = Song.find_by_slug(params[:slug])
        erb :"/songs/show"
    end

    post '/songs' do 
    
        redirect to "/songs"
    end


  
end