class GenresController < ApplicationController

  #index
  get "/genres" do
    @genres = Genre.all
    erb :"genres/index"
  end

  #show
  get "/artists/:id" do
    @artist = Artist.find(params[:id])
    erb :"artists/show"
  end

end
