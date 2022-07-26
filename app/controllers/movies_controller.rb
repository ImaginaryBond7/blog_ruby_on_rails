class  MoviesController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def getAllMovies
        
        render :json => data
    end
    def createMovies
        movieItem = {
            "title" => params[:title],
            "year" => params[:year],
            "poster" => params[:poster],
            "runtime" => params[:runtime]
        }
        movie = Movie.new(movieItem)
        movie.save
        render :json => movie
    end
end