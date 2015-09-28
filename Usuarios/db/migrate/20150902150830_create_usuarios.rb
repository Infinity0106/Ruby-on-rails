class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :apellidoP
      t.string :apellidoM
      t.integer :edad
      t.string :email

      t.timestamps null: false
    end
  end
end
