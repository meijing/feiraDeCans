class CreateContactos < ActiveRecord::Migration
  def self.up
    create_table :contactos do |t|
      t.string :nombre
      t.string :email
      t.string :texto

      t.timestamps
    end
  end

  def self.down
    drop_table :contactos
  end
end
