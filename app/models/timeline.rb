class Timeline < ActiveRecord::Base
  belongs_to :subject_session
  has_many :decision_blocks
  has_many :subject_decisions
end
