class Shift < ApplicationRecord
  belongs_to :user
  has_one :absent, dependent: :destroy  # 一対一の関係
  has_many :notifications, dependent: :destroy

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :start_finish_check
  validate :start_check

  def start_finish_check
    errors.add(:end_time, "は開始時刻より遅い時間を選択してください") if start_time > end_time #開始時間と終了時間の比較
  end

  def start_check
    errors.add(:start_time, "は現在の日時より遅い時間を選択してください") if start_time < Time.current #開始時間と現在日時の比較
  end

end