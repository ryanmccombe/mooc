class User < ActiveRecord::Base
  has_many :links
  has_many :upvotes
  has_many :comments

  has_secure_password

  # validates :password, length: {minimum: 8}, allow_blank: true
  # validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false}


  def as_json(options={})
    super(:only => [:name, :admin])
  end

end
