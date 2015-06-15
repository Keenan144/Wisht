class WishesController < ApplicationController
  def index
    @wishs = Wish.paginate(page: params[:page])
  end
  
  def show
    @wish = Wish.find_by(id: params[:format])
    if @wish == nil 
      @wish = Wish.find(params[:id])
    end
  end

  def popular_wish
    @wishes = []
    Wish.select(:name).group(:name).having("count(*) > 1").each do |wish|
      @wishes << wish
    end
    @wish = @wishes.sample
  end

  def new
    @wish = Wish.new
    @list = List.find_by(id: params[:format])
  end

  def create
    @user = User.find_by(id: current_user.id)
    @wish = Wish.new(wish_params)
    @wish.update(user_id: current_user.id)
    @wish.save
    if @wish.name == ""
      if @wish.url
        require 'nokogiri'
        require 'open-uri'
        url = @wish.url
        @doc = Nokogiri::HTML(open(url))
        @wish.update(name: @doc.at_css("#productTitle").text)
        @wish.update(content: @doc.at_css("title").text)
        @wish.update(price: @doc.at_css('.offer-price').text)
          if @wish.price == ""
            @wish.update(price: @doc.at_css('#priceblock_ourprice').text)
          end
      end
    end

    if @wish.save
      flash[:success] = "list created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    @wish = Wish.find_by(id: params[:format])
    @wish.destroy
    redirect_to :back
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
    params.require(:wish).permit(:name, :user_id, :list_id, :comments, :content, :url)
  end
end
