class MoviesController < ApplicationController
  def index
    render template: "movie_templates/index"
  end

  def show
    movie_id = params.fetch("id")

    @movie = Movie.where({ id: movie_id }).first

    render template: "movie_templates/show"
  end
end
