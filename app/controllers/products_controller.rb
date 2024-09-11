class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
    @stocks = Stock.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save 
      flash[:notice] = 'O Produto foi adicionado com sucesso!'
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
   if @product.update(product_params)
    redirect_to product_path(@product) 
   else
    render :edit
   end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name)
  end
end
