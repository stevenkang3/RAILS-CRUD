class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @categories = Category.all
  end

  def create
    category = Category.find(product_params[:category])
    product = Product.new(name: product_params[:name], description: product_params[:description], price: product_params[:price], category: category)
    if product.save
    redirect_to '/products'
    else
    flash[:errors] = product.errors.full_messages
    redirect_to '/products/new'
  end
end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
    # redirect_to '/users/show'
  end


  def edit
      @product = Product.find(params[:id])
      @categories = Category.all
    end

    def update
      category = Category.find(product_params[:category])
      product = Product.find(params[:id])
      product.update(name: product_params[:name], description: product_params[:description], price: product_params[:price], category: category)
  
      redirect_to '/products'
    end

    def destroy
      product = Product.find(params[:id])
       if product.destroy
         redirect_to '/products'
         else
         flash[:errors] = product.errors.full_messages
       end
    end


    private

    def product_params
      params.require(:product).permit(:name, :description, :price, :category)
    end
end
