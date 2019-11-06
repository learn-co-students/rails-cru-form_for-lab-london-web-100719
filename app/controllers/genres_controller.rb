class GenresController < ApplicationController
    
    def index
        @genres = Genre.all
    end
    
    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.create(params_genre)
        redirect_to genre
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        genre = Genre.update(params_genre)
        redirect_to genre
    end

    private

    def params_genre
        params.require(:genre).permit(:name)
    end

end
