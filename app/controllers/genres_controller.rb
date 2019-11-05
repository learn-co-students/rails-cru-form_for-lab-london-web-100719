class GenresController < ApplicationController
    
    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.create(genre_params)
        redirect_to genre
    end

    def index
        @genres = Genre.all
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to @genre
    end

    def delete
        @genre = Genre.find(params[:id])
        @genre.destroy
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

   
end
