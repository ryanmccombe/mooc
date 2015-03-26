class LinksController < ApplicationController
  require 'auth_token'

  def index
    @user = get_user(request.headers)
    @categories = Category.all
    @links = Link.all
    @links.current_user = @user

    render json: {user: @user, categories: @categories, links: @links}
  end

  def show
    @user = get_user(request.headers)
    @link = Link.find(params[:id])
    @link.current_user = @user
    @comments = @link.comments.all

    render json: {user: @user, link: @link, comments: @comments}
  end



end
