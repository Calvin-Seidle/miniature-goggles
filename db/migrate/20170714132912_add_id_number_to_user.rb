class AddIdNumberToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :id_number, :bigint
  end
end
