class ArtistsController < ApplicationController

  #index
  get "/artists" do
    @artists = Artist.all
    erb :"artists/index"
  end

  #show
  get "/artists/:id" do
    @artist = Artist.find(params[:id])
    erb :"artists/show"
  end

end
