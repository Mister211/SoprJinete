class CreateDetalles < ActiveRecord::Migration[6.0]
  def change
    create_table :detalles do |t|
      t.decimal :cantidad
      t.references :Prestamo, null: false, foreign_key: true
      t.references :Libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
