class EmployeeUserLevel < ApplicationRecord
	has_many :users
  def to_s
  	self.Employee_User_Level
  end
end
