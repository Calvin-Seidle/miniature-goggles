class CreateEmployeeTaskStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_task_statuses do |t|
      t.string :Task_Status

      t.timestamps
    end
  end
end
