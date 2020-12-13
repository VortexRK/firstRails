class StoreController < ApplicationController
  include Counter
  before_action :increaseCounter, only: [:index] 
  def index
    @products = Product.order(:title)
  end
end
