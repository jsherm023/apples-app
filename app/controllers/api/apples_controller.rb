class Api::ApplesController < ApplicationController
  def index
    @apples = Apple.all
    render "index.json.jbuilder"
  end
end
