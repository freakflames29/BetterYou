class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task

  def self.search(uid,tid)
    where('user_id = ? AND task_id = ?', uid, tid)
  end
end
