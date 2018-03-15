class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :start_date
      t.text :end_date
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
