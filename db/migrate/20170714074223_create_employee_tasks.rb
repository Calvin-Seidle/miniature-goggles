class CreateEmployeeTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_tasks do |t|
      t.string :Task_Name
      t.date :Task_Start_Date
      t.date :Task_End_Date
      t.references :employee_report, foreign_key: true

      t.timestamps
    end
  end
end
