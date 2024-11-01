class Shift < ApplicationRecord
  belongs_to :user
  has_one :absent, dependent: :destroy  # 一対一の関係
  has_many :notifications, dependent: :destroy

  validates :date, presence: true, format: { with: /\A\d{4}-\d{1,2}-\d{1,2}\z/ }, date: { after_or_equal_to: Date.today }
  validates :start_time, presence: true, format: { with: /\A\d{2}:\d{2}\z/ }, time: { after: '00:00', before: '24:00' }
  validates :end_time, presence: true, format: { with: /\A\d{2}:\d{2}\z/ }, time: { after: :start_time, before: '24:00' }
end