class CategoriesController < ApplicationController
  respond_to :html, :json

  def index
    @categories = Category.all
    respond_with @categories
  end

  def new
    @category = Category.new
    respond_with @category
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = 'Category was successfully created.'
    end
    respond_with @category, location: categories_url
  end

  def show
    @category = Category.find(params[:id])
    respond_with @category
  end

  def edit
    @category = Category.find(params[:id])
    respond_with @category
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
    end
    respond_with @category, location: categories_url
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_with @category, location: categories_url
  end
end
