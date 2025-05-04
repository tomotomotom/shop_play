class CartsController < ApplicationController
  before_action :initialize_cart

  def show
    @items = Item.find(@cart.keys)
  end

  def add
    item_id = params[:id].to_s
    @cart[item_id] ||= 0
    @cart[item_id] += 1
    save_cart
    redirect_to cart_path, notice: "商品をカートに追加しました。"
  end

  def remove
    item_id = params[:id].to_s
    @cart.delete(item_id)
    save_cart
    redirect_to cart_path, notice: "商品をカートから削除しました。"
  end

  def clear
    session[:cart] = {}
    redirect_to cart_path, notice: "カートを空にしました。"
  end

  def complete
    session[:cart] = {}
  end

  private

  def initialize_cart
    session[:cart] ||= {}
    @cart = session[:cart]
  end

  def save_cart
    session[:cart] = @cart
  end
end
