class CreateLibros < ActiveRecord::Migration[6.0]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :autor
      t.string :anyo

      t.timestamps
    end
  end
end
