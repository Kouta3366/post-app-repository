class Post < ApplicationRecord
  validates :contents, {presence:true, length:{maximum: 27}}

  def user
    return User.find_by(id: self.user_id)
  end
end
