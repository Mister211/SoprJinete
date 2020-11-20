class CreateMultados < ActiveRecord::Migration[6.0]
  def change
    create_table :multados do |t|
      t.decimal :valor
      t.string :fecha
      t.string :estado
      t.references :Prestamo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
