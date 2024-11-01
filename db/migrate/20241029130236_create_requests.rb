class CreateRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :requests do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :coffee_request
      t.boolean :water_request
      t.boolean :paper_request
      t.text :other_request

      t.timestamps
    end
  end
end
