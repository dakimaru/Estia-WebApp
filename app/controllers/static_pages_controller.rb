class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to current_user
    end
  end

  def about
  end

  def how_it_works
  end

  def support
  end

  def jobs
  end

  def news
  end

  def contact
  end
end
