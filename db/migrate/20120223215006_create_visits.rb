class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.string :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
