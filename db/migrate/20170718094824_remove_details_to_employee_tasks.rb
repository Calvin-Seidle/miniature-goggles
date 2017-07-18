class RemoveDetailsToEmployeeTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :employee_tasks, :Task_End_Date, :date
  end
end
