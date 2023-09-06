class DirectorsController < ApplicationController
  def index
    render template: "director_templates/index"
  end

  def show
    # Params: {"id"=>"1"}
    @director_id = params.fetch("id")
    @director = Director.where({ id: @director_id}).first
    render template: "director_templates/show"
  end
end
