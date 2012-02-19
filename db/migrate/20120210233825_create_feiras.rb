class CreateFeiras < ActiveRecord::Migration
  def self.up
    create_table :feiras do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :feiras
  end
end
