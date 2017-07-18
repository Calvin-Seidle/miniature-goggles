class CreateEmployeeReports < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_reports do |t|
      t.string :Report_Name
      t.date :Report_Start_Date
      t.date :Report_End_Date
      t.references :employee_report_type, foreign_key: true

      t.timestamps
    end
  end
end
