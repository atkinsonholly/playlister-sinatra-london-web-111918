class SongsController < ApplicationController

  #index
  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  #new
  get "/songs/new" do
    erb :"songs/new"
  end

  #create
  post "/songs" do
    song = Song.create(params[:song])
    redirect "/songs/#{song.id}"
  end

  #show
  get "/songs/:id" do
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

  #edit
  get "/songs/:id/edit" do
    @song = Song.find(params[:id])
    erb :"songs/edit"
  end

end
