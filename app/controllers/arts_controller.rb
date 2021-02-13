class ArtsController < ApplicationController
  def index
    @arts = Art.search({:form => params[:form],:artist => params[:artist],:name => params[:name]})
  end

  def new
    @art = Art.new
  end

  def create
    art = Art.create art_params
    redirect_to art
  end

  def edit
    @art = Art.find params[:id]
  end

  def update
    art = Art.find params[:id]
    art.update art_params
    redirect_to art    
  end

  def show
    @art = Art.find params[:id]
  end

  def destroy
    art = Art.find params[:id]
    art.destroy
    redirect_to root_path
  end

  private
  def art_params
    params.require(:art).permit(:form, :name, :artist, :year, :image, :search)
  end
end
