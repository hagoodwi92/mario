class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, :only => [:landing]
  # skip_before_action :authenticate_user!, :only => [:index]
  # skip_before_action :authenticate_user!, :only => [:show]

  before_action :only => [:index] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
  before_action :only => [:new] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
  
  # skip_before_action :authenticate_user!, :only => [:index/show/new]
  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end

end