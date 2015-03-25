class UpvotesController < ApplicationController
  def create
    user = get_user(request.headers)
    if user
      if Upvote.exists?(user_id: user.id, link_id: params['_json'])
        render json: {message: 'You already upvoted that link'}, status: 400
      else
        upvote = Upvote.create(user_id: user.id, link_id: params['_json'])
        render json: upvote.id
      end
    else
      render json: {message: 'You must be logged in to upvote'}, status: 401
    end
  end

  def destroy
    user = get_user(request.headers)
    upvote = Upvote.find(params[:id])
    if upvote && user && upvote.user_id == user.id
      upvote.destroy
    end
  end
end
