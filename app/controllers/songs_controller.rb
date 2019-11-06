class SongsController < ApplicationController

    def index
        @songs = Song.all
    end
    
    def new
        @song = Song.new
        @artists = Artist.all
        @genres = Genre.all
    end

    def create
        song = Song.create(params_song)
        redirect_to song
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
        @artists = Artist.all
        @genres = Genre.all
    end

    def update
        song = Song.update(params_song)
        redirect_to song
    end

    private

    def params_song
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
