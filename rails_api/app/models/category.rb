class Category < ActiveRecord::Base
  has_many :links

  def as_json(options={})
    {
      :slug => self.slug,
      :name => self.name
    }
  end
end
