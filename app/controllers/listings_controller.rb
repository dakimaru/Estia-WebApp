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
    @listing = Listing.find(params[:id])
    10.times {@listing.listing_photos.build}
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update_attributes(params[:listing])
      flash[:success] = "Listing updated"
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.destroy
      flash[:success] = "Listing has been removed"
      redirect_to current_user
    else
      flash[:error] = "Oups! Something went wrong"
      redirect_to edit_listing_path(@listing)
    end
  end
  
end
