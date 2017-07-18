class CreateEmployeeReportTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_report_types do |t|
      t.string :Report_Type

      t.timestamps
    end
  end
end
