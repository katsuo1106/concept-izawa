class CreateWires < ActiveRecord::Migration[6.0]
  def change
    create_table :wires do |t|

      t.string  :hinban, null: false
      t.integer :chumon
      t.integer :seisan
      t.integer :husoku
      t.integer :kei_id, null: false
      t.integer :iro_id, null: false
      t.decimal :nagasa, null: false, precision: 6, scale: 2
      t.decimal :tanka,  null: false, precision: 6, scale: 2
      t.timestamps
    end
  end
end
