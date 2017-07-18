class CreateEmployeeUserLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_user_levels do |t|
      t.string :Employee_User_Level

      t.timestamps
    end
  end
end
