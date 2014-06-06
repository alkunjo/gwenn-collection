class ProductsController < ApplicationController
  def get_data_form
    @categories = Category.order(:name)
  end

  # GET /products
  # GET /products.json
  def index
    @products = Product.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    get_data_form
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    get_data_form
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.create(params[:product])

    respond_to do |format|
      format.html { redirect_to products_path, notice: 'Product was successfully created.' }
      format.json { render json: @product, status: :created, location: @product }
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])

    respond_to do |format|
      format.html { redirect_to products_path, notice: 'Product was successfully created.' }
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
