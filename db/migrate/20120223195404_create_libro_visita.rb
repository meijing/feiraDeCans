class CreateLibroVisita < ActiveRecord::Migration
  def self.up
    create_table :libro_visita do |t|
      t.string :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :libro_visita
  end
end
