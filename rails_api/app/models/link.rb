class Link < ActiveRecord::Base
  cattr_accessor :current_user
  belongs_to :user
  belongs_to :category
  has_many :upvotes
  has_many :comments

  def as_json(options={})
    {
      :id => self.id,
      :rating => self.upvotes.count,
      :upvoted => self.upvoted?,
      :title => self.title,
      :body => self.body,
      :url => self.url,
      :category => self.category.name,
      :category_slug => self.category.slug,
      :time => self.created_at.to_i,
      :user => self.user.name,
      :user_id => self.user.id,
      :comments => self.comments.count
    }
  end

  def upvoted?
    if current_user
      upvote = Upvote.find_by(:user => current_user, :link => self)
      upvote.id if upvote
    else
      false
    end
  end
end
