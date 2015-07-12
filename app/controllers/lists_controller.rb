class ListsController < ApplicationController

  def index
    @lists = List.paginate(page: params[:page])
  end
  
  def show
    @user = User.find_by(id: current_user.id)
    @list = List.find_by(id: params[:format])
    if @list == nil 
      @list = List.find(params[:id])
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.update(user_id: current_user.id)
    @list.save
    if @list.save
      flash[:success] = "list created!"
      redirect_to @list
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    list = List.find_by(id: params[:format])
    wishes = Wish.where(list_id: params[:format])
    wishes.each do |wish|
      wish.destroy
    end
    list.destroy
    redirect_to @user
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      flash[:success] = "Profile updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :user_id, :description)
  end
end
