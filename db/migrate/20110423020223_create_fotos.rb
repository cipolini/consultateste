class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.string :nome
      t.integer :id_consulta

      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end
