class RemoveColumnsFromYourTableName < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :user_role, :string
    remove_column :users, :user_number, :string
  end
end
