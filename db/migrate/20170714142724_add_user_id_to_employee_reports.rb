class AddUserIdToEmployeeReports < ActiveRecord::Migration[5.1]
  def change
    add_reference :employee_reports, :user, foreign_key: true
  end
end
