class CreateWires < ActiveRecord::Migration[6.0]
  def change
    create_table :wires do |t|

      t.string  :hinban, null: false
      t.integer :chumon
      t.integer :seisan
      t.integer :husoku
      t.integer :kei_id, null: false
      t.integer :iro_id, null: false
      t.integer :nagasa, null: false
      t.float   :tanka,  null: false
      t.timestamps
    end
  end
end
