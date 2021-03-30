class SessionsController < ApplicationController
  def new
  end

  def create
    if sign_in(params.require(:user).require(:email))
      redirect_to desserts_path
    else
      render :new
    end
  end

  def destroy
    sign_out
  end
end