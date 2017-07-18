class AddDetailsToEmployeeTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :employee_tasks, :Task_Description, :string
    add_column :employee_tasks, :Task_Status, :boolean
    add_column :employee_tasks, :Task_Due_Date, :date
  end
end
