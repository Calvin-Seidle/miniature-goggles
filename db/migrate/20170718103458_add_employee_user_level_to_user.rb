class AddEmployeeUserLevelToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :employee_user_level, foreign_key: true
  end
end
