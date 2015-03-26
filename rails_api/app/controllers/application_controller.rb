class ApplicationController < ActionController::API

  def get_user(headers)
    if headers['Authorization'].nil?
      false
    else
      token = AuthToken.valid?(headers['Authorization'].split(' ').last)
      if token
        User.find_by_id(token[0]['user_id'])
      else
        # Invalid Token
        false

      end
    end
  end

end
