class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def show
    render json: movie
  end

  def create
    movie = Movie.new(movie_params)
    byebug
    if movie.save
      render json: movie
    else
      render json: {error: movie.errors}, status: 422
    end
  end

  def update
    if movie.update(movie_params)
      render json: movie
    else
      render json: {error: movie.errors}, status: 422
    end
  end

  def destroy
    movie.destroy
  end

  private

  def movie
    @movie ||= Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :name,
      :description,
      :url,
      :presentation_day
    )
  end
end
