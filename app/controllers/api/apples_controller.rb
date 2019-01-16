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

  def update
    @apple = Apple.find_by(id:params[:id])
    @apple.update(
      variety: params[:variety],
      color: params[:color],
      price: params[:price],
      origin: params[:origin],
      flavor: params[:flavor]
      )
    render "show.json.jbuilder"
  end

  def destroy
    @apple = Apple.find_by(id:params[:id])
    @apple.destroy
    render json: {message: "Apple has been successfully removed!"}
  end
end
