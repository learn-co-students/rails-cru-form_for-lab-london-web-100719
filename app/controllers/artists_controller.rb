class ArtistsController < ApplicationController

    def index 
        @artists = Artist.all 
    end 

    def new 
        @artist = Artist.new 
    end 

    def create 
        @artist = Artist.new(name: params[:artist][:name], bio: params[:artist][:bio])
        @artist.save
        redirect_to artist_path(@artist)
    end 

    def edit 
        @artist = Artist.find(params[:id])
    end 

    def update 
        @artist = Artist.find(params[:id])
        @artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist) 
    end 

    def destroy 
        @artist = Artist.find(params[:id])
        @artist.destroy
        erb :index
    end 

    def show 
        @artist = Artist.find(params[:id])
    end 

end
