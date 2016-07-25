class User < ActiveRecord::Base
  has_secure_password

  has_many :predictions
  has_many :articles, through: :predictions
end
