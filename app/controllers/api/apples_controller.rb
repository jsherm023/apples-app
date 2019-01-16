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

  def show
    @apple = Apple.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
