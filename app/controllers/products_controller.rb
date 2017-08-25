class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def boys
  end

  def boys_infants
  end

  def boys_2to6
  end

  def boys_7to13
  end

  def girls
  end

  def toys
  end

  def books
  end

  def books_6to10
  end

  def books_graphic_novels
  end

  def books_novels
  end

  def books_young_adults
  end

  def gallery
  end

  def blog
  end
end
