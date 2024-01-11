class CreateConnections < ActiveRecord::Migration[7.0]
  def change
    create_table :connections do |t|
      t.string :status
      t.integer :connected_user_id
      t.references :user , null: false, foreign_key: true
      t.timestamps
    end
  end
end
