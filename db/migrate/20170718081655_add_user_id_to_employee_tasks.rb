class AddUserIdToEmployeeTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :employee_tasks, :user, foreign_key: true
  end
end
