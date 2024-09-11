class StocksController < ApplicationController
  before_action :set_product, only: %i[ new create show edit update destroy statistic]
  before_action :set_stock, only: %i[ show edit update destroy statistic]

  def index
    @products = Product.all
    @stocks = Stock.all
  end


  def new
    @stock = Stock.new(product_id: @product.id)
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.product_id = @product.id
    if @stock.save 
      redirect_to product_stocks_path(@product)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @stock.update(stock_params) 
    redirect_to product_stock_path(@product, @stock)
    else
      render :edit
    end
  end

  def destroy
    @stock.destroy
    redirect_to product_stocks_path(@product)
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end

  def stock_params
    params.require(:stock).permit(:price, :quantity, :stock_minimal, :selling_price)
  end
end