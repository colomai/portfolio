class Shift < ApplicationRecord
  belongs_to :user
  has_one :absent, dependent: :destroy  # 一対一の関係
  has_many :notifications, dependent: :destroy
end
