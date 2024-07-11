class Absent < ApplicationRecord
  belongs_to :user
  belongs_to :shift  # 一対一の関係
  has_many :notifications, dependent: :destroy
end
  