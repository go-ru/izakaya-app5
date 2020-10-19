class CreateDelivers < ActiveRecord::Migration[6.0]
  def change
    create_table :delivers do |t|
      t.string :store_name,      null:false
      t.string :product,         null:false
      t.references :message,     null:false, foreign_key: true
      t.references :user,        null:false, foreign_key: true
      t.timestamps
    end
  end
end
