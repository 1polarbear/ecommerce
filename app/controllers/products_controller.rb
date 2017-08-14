class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def products_boys
  end

  def products_girls
  end

  def toys
  end

  def books
  end

  def gallery
  end

  def blog
  end
end
