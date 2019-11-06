class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end
    
    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create(params_artist)
        redirect_to artist
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.update(params_artist)
        redirect_to artist
    end

    private

    def params_artist
        params.require(:artist).permit(:name, :bio)
    end

end
