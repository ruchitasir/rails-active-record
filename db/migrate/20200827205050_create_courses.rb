class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
