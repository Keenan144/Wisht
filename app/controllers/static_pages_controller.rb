class StaticPagesController < ApplicationController
  
  def home
    wishes = Wish.where(list_id: nil)
    wishes.each do |wish|
      wish.destroy
    end
    if current_user
      @user = current_user
    else
      @user = " "
    end
    @wishes = Wish.paginate(page: params[:page], per_page: 10)
    @wish = Wish.last

  end

  def help
  end
end
