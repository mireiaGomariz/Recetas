class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :password
      t.string :user_name
      t.integer :type_user

      t.timestamps
    end
  end
end
