class CommunitiesController < ApplicationController
  def new
    @community = Community.new
  end
  
  def create
    @community = Community.new(params[:community])
    if @community.save
      redirect_to @community
    else
      render 'new'
    end
  end

  def edit
    @community = Community.find_by_id(params[:id])
  end
  
  def update
    @community = Community.find(params[:id])
    
    if @community.update_attributes(params[:community])
      redirect_to @community, :flash => {:success => "Community updated." }
    else
      render 'edit'
    end
  end

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find_by_id(params[:id])
  end

end
