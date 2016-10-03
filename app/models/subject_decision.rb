class SubjectDecision < ActiveRecord::Base
  belongs_to :decision_block
  belongs_to :timeline
end
