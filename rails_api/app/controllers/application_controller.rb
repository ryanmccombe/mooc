class ApplicationController < ActionController::API

  def get_user(headers)
    return User.first
    if headers['Authorization'].nil?
      false
    else
      token = AuthToken.valid?(headers['Authorization'].split(' ').last)
      if token
        User.find(token[0]['user_id'])
      else
        # Invalid Token

      end
    end
  end

end
