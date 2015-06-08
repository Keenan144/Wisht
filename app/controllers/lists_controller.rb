class ListsController < ApplicationController

  def index
    @lists = List.paginate(page: params[:page])
  end
  
  def show
    @list = List.find(params[:id])
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
