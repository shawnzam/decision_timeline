class DecisionBlock < ActiveRecord::Base
  belongs_to :timeline
  has_many :subject_decisions
end
