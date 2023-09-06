class DirectorsController < ApplicationController
  def index
    render template: "director_templates/index"
  end

  def show
    # Params: {"id"=>"1"}
    director_id = params.fetch("id")
    @director = Director.where({ id: director_id }).first

    @matching_movies = Movie.where({ director_id: director_id })

    render template: "director_templates/show"
  end
end
