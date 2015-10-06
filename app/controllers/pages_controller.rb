class PagesController < ApplicationController
  def terms
  end

  def welcome
  end

  def landing
    unless user_signed_in?
      flash[:notice] = 'Please login'
      redirect_to new_user_session_path
    end
  end
  
end
