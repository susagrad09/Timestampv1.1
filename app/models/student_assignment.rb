  class StudentAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :completion_time, :student_id
  belongs_to :student
  belongs_to :assignment
  delegate :due_date, :to => :assignment

  scope :completed, where("completion_time IS NOT NULL")

  # scope :this_week, where("due_date >= ?", Time.zone.now.beginning_of_week)
  # scope :happened_before, lambda { |some_date| where("completion_time < ?", date) }
  #
  # student.student_assignments.this_week
  # assignment.student_assignments.completed.this_week
  # StudentAssignment.completed.this_week
  # def completed
  #    where("completed_at NOT NULL")
  #  end

  # def happened_before(date)
  #   where("completion_time < ?", date)
  #   order()
  #   limit()
  # end
end
