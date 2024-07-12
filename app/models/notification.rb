class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :shift
  belongs_to :absent, optional: true  # absent_id が存在しない場合があるので optional: true を設定
end
