class LinksController < ApplicationController
  def index
    @user = {}
    @links = Link.all

    render json: {user: @user, links: @links}
  end

  def show
    @link = Link.find(params[:id])
    render json: {link: @link}
  end
end
