class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :update, :edit, :destroy]

  def index
    @billboards = Billboard.all
  end

  def show
    @songs = @billboard.songs.all
  end


  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private

    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def billboard_params
      params.require(:billboard).permit(:name)
    end



end

