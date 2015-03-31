class CommentsController < ApplicationController
  def create
    user = get_user(request.headers)
    link = Link.find_by_id(params[:comment][:id])
    if user && link
      comment = Comment.create(body: params[:comment][:body], user: user, link: link)
      if comment.save
        render json: comment
      else
        render json: comment.errors.full_messages, status: 400
      end
    else
      render json: {message: 'Only registered users can submit links'}, status: 401
    end
  end

  def destroy
    user = get_user(request.headers)
    if user.admin
      comment = Comment.find(params[:id])
      comment.destroy
      render json: comment
    else
      render json: {message: 'Only an administrator can delete comments'}, status: 401
    end
  end
end
