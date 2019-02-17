class CreateReceta < ActiveRecord::Migration[5.2]
  def change
    create_table :receta do |t|
      t.string :user_name
      t.string :titulo
      t.text :ingredientes
      t.text :elaboracion
      t.integer :user_id

      t.timestamps
    end
  end
end
