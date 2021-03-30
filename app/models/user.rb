class User < ApplicationRecord
  has_one_attached :picture

  validates_presence_of :email, :name
  validates_uniqueness_of :email
end