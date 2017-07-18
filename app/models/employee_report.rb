class EmployeeReport < ApplicationRecord
  belongs_to :user
  belongs_to :employee_report_type
  has_many :employee_tasks, dependent: :destroy, dependent: :destroy
  def to_s
  	self.Report_Name
  end		
end
