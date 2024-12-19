class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shifts, dependent: :destroy
  has_many :absents, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 8 }, format: { with: /\A[a-zA-Z0-9_]{8,}\z/ }
  validates :name, presence: true, length: { maximum: 20 }
  validates :number, presence: true, numericality: { only_integer: true }
end