class CreateAnuncios < ActiveRecord::Migration
  def self.up
    create_table :anuncios do |t|
      t.string :titulo
      t.string :texto
      t.string :numero
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :anuncios
  end
end
