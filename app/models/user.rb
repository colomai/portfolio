class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shifts, dependent: :destroy
  has_many :absents, dependent: :destroy
  has_many :notifications, dependent: :destroy
end
