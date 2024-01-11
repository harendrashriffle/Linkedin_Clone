class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :degree
      t.string :field
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.references :user , null: false, foreign_key: true
      t.timestamps
    end
  end
end
