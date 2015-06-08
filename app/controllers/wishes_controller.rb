class WishesController < ApplicationController
  def index
    @wishs = Wish.paginate(page: params[:page])
  end
  
  def show
    @user = User.find_by(id: current_user.id)
    @list = List.find_by(id: params[:id])
    @wish = Wish.find_by(id: params[:format])
    if @wish == nil 
      @wish = Wish.find(params[:id])
    end
  end

  def new
    @wish = Wish.new
    @list = List.find_by(id: params[:format])
  end

  def create
    @wish = Wish.new(wish_params)
    @wish.update(user_id: current_user.id)
    @wish.save
    if @wish.save
      flash[:success] = "list created!"
      redirect_to @wish
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    @wish = Wish.find_by(id: params[:format])
    @wish.destroy
    redirect_to @user
  end

  def edit
    @wish = Wish.find(params[:id])
  end

  def update
    @wish = Wish.find(params[:id])
    if @wish.update_attributes(list_params)
      flash[:success] = "Profile updated"
      redirect_to @wish
    else
      render 'edit'
    end
  end

  private

  def wish_params
    params.require(:wish).permit(:name, :user_id, :list_id, :comments, :content)
  end
end
