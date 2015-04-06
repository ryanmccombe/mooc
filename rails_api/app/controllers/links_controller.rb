class LinksController < ApplicationController
  require 'auth_token'

  def index
    @user = get_user(request.headers)
    @categories = Category.all
    @sort = params[:sort]
    if @sort == 'recent'
      @links = Link.recent
      @links.current_user = @user
    elsif @sort == 'rated'
      @links = Link.rated
      @links.current_user = @user
    elsif @sort == 'myRated'
      @links = @user.upvoted_links
    end


    render json: {user: @user, categories: @categories, links: @links, sort: @sort}
  end

  def show
    @user = get_user(request.headers)
    @link = Link.find(params[:id])
    @link.current_user = @user
    @comments = @link.comments.all

    render json: {user: @user, link: @link, comments: @comments}
  end

  def create
    user = get_user(request.headers)
    if user
      category = Category.find_by_slug(params[:link][:category])
      link = Link.create(title: params[:link][:title], body: params[:link][:body], url: params[:link][:url], user: user, category: category)
      if link.save
        render json: link
      else
        render json: link.errors.full_messages, status: 400
      end
    else
      render json: {message: 'Only registered users can submit links'}, status: 401
    end
  end

  def destroy
    user = get_user(request.headers)
    if user.admin
      link = Link.find(params[:id])
      link.destroy
      render json: link
    else
      render json: {message: 'Only an administrator can delete links'}, status: 401
    end
  end



end
