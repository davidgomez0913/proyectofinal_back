class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :name
      t.text :category
      t.datetime :fecha_hora
      t.integer :quota
      t.timestamps      
    end
  end
end
