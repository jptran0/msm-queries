class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render template: "actor_templates/index"
  end

  def show
    actor_id = params.fetch("id")

    @actor = Actor.where({ id: actor_id }).first

    @characters = Character.where({ actor_id: actor_id})

    render template: "actor_templates/show"
  end
end
