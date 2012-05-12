class CbosController < ApplicationController
  def index
    @cbos = Cbo.all
  end

  def show
    @cbo = Cbo.find(params[:id])
  end

  def edit
    @cbo = Cbo.find(params[:id])
  end
  
  def update
    @cbo = Cbo.find(params[:id])
    
    if @cbo.update_attributes(params[:cbo])
      redirect_to @cbo, :flash => {:success => "CBO updated." }
    else
      render 'edit'
    end
  end

end
