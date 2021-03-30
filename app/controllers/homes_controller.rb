class HomesController < ApplicationController
  def index
    if signed_in?
      redirect_to desserts_path
    else
      redirect_to new_session_path
    end
  end
end