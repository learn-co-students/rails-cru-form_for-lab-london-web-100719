class SongsController < ApplicationController

    def index

        @songs = Song.all

    end

    def show

        @song = Song.find(params[:id])
        # byebug
        @genre = @song.genre
        @artist = @song.artist

    end

    def new

        @song = Song.new
        @genres = Genre.all
        @artists = Artist.all
        @artist = Artist.new
        @genre = Genre.new

    end

    def create

        song = Song.create(song_params)
        # byebug

        redirect_to song

    end

    def edit

        @song = Song.find(params[:id])

    end

    def update

        song = Song.find(params[:id])
        song.update(song_params)

        redirect_to song

    end

    private

    def song_params

        params.require(:song).permit!

    end

end