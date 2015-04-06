class CategoriesController < ApplicationController
  def index

  end

  def show
    @user = get_user(request.headers)
    @categories = Category.all
    category = Category.find_by_slug(params[:id])
    @sort = params[:sort]
    if @sort == 'recent'
      @links = category.links.order('created_at DESC')
      @links.current_user = @user
    elsif @sort == 'rated'
      @links = category.links.order('upvotes_count DESC')
      @links.current_user = @user
    elsif @sort == 'myRated'
      @links = @user.upvoted_links.where(category: category)
    end
    @links.current_user = @user

    render json: {user: @user, categories: @categories, category: category, links: @links, sort: @sort}
  end
end
