class Api::ApplesController < ApplicationController
  def index
    @apples = Apple.all
    render "index.json.jbuilder"
  end

  def create
    @apple = Apple.new(
      variety: params[:variety],
      color: params[:color],
      price: params[:price],
      origin: params[:origin],
      flavor: params[:flavor]
      )
    @apple.save
    render "show.json.jbuilder"
  end
end
