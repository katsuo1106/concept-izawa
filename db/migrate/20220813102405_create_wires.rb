class CreateWires < ActiveRecord::Migration[6.0]
  def change
    create_table :wires do |t|

      t.string  :hinban, null: false
      t.integer :chumon, null: false
      t.integer :zaiko, null: false
      t.integer :chumonlog, null: false
      t.integer :zaikolog, null: false
      t.integer :kei_id, null: false
      t.integer :iro_id, null: false
      t.decimal :nagasa, null: false, precision: 6, scale: 2
      t.decimal :tanka,  null: false, precision: 6, scale: 2
      t.timestamps
    end
  end
end
