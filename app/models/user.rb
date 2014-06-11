class User < ActiveRecord::Base
  attr_accessible :emaail, :name

  def self.create_users
    User.create! name:'connor', emaail:'connor@gmail.com'
    User.create! name:'jonathan', emaail:'jonathan@gmail.com'
  end
end
