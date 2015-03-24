class UpvotesController < ApplicationController
  def create
    user = get_user(request.headers)
    if user
      Upvote.find_or_create_by(user_id: user.id, link_id: params['_json'])
    else

    end
    render json: {params: params, user: user}
  end

  def destroy
    user = get_user(request.headers)
    upvote = Upvote.find(params[:id])
    if upvote
      upvote.destroy
    end
  end
end
