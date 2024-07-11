class User < ApplicationRecord
  has_many :shifts, dependent: :destroy
  has_many :absents, dependent: :destroy
  has_many :notifications, dependent: :destroy
end
      

