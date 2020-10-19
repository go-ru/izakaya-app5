class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :address,       null:false
      t.string :tel_number,    null:false
      t.string :genre,         null:false
      t.string :hour,          null:false
      t.string :budget,        null:false
      t.references :user,      null:false, foreign_key: true
      t.timestamps
    end
  end
end
