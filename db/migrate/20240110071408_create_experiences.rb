class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :designation
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.references :user , null: false, foreign_key: true
      t.timestamps
    end
  end
end
