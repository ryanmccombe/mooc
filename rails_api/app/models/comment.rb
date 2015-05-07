class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  def as_json(options={})
    {
      :id => self.id,
      :body => self.body,
      :user_id => self.user.id,
      :user => self.user.name,
      :time => self.created_at.to_i,
      :link => self.link.title,
      :link_id => self.link.id,
      :category => self.link.category,
    }
  end
end
