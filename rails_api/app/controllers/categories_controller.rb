class CategoriesController < ApplicationController
  def index

  end

  def show
    @user = get_user(request.headers)
    @categories = Category.all
    category = Category.find_by_slug(params[:id])
    @sort = params[:sort]
    @links = category.links
    @links.current_user = @user

    render json: {user: @user, categories: @categories, category: category, links: @links, sort: @sort}
  end
end
