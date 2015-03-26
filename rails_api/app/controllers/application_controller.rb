class ApplicationController < ActionController::API

  def get_user(headers)
    if headers['Authorization'].nil?
      false
    else
      token = AuthToken.valid?(headers['Authorization'].split(' ').last)
      if token
        if User.exists?(token[0]['user_id'])
          User.find(token[0]['user_id'])
        else
          false
        end
      else
        # Invalid Token
        false

      end
    end
  end

end
