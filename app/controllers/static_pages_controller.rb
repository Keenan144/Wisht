class StaticPagesController < ApplicationController
  def home
    if current_user
      @user = current_user
    else
      @user = " "
    end
  end

  def help
  end
end
