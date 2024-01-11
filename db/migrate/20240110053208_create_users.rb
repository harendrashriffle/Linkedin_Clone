class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :mobile
      t.string :bio
      t.string :skills
      t.string :address
      t.timestamps
    end
  end
end
