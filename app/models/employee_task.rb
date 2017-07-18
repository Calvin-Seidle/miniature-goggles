class EmployeeTask < ApplicationRecord
  belongs_to :employee_report
  def to_s
  	self.Task_Name
  end
end
