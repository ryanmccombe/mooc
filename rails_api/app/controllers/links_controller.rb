class LinksController < ApplicationController
  def index
    @user = get_user(request.headers)
    @links = Link.all

    render json: {user: @user, links: @links}
  end

  def show
    @user = get_user(request.headers)
    @link = Link.find(params[:id])

    render json: {user: @user, link: @link}
  end


  def get_user(headers)
    if headers['Authorization'].nil?
      false
    else
      token = AuthToken.valid?(headers['Authorization'].split(' ').last)
      if token
        token.inspect
        User.find(token[0]['user_id'])
      end
    end
  end

end
