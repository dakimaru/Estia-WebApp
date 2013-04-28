class ListingsController < ApplicationController
  
  before_filter :signed_in_user,
                only: [:show, :new]
  def index
    @listings = Listing.order("created_at DESC").page(params[:page]).per_page(4)
  end
  
  def show
    @listing = Listing.find(params[:id])
  end
  
  def new
    @listing = Listing.new 
  end

  def create
    @listing = current_user.listings.build(params[:listing])
    if @listing.save
      redirect_to @listing, :flash => { :success => "Your listing is now live on the web. Congrats!"}
    else
      render "new"
    end
  end

  def edit
  end
  
end
