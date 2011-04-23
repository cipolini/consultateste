class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.string :CPF
      t.string :RG
      t.string :Nome
      t.string :CEP
      t.string :Endereco
      t.string :Numero
      t.string :Bairro
      t.string :Cidade
      t.string :UF
      t.string :Complemento
      t.string :Sexo
      t.string :Estado_Civil
      t.datetime :data_nascimento

      t.timestamps
    end
  end

  def self.down
    drop_table :pacientes
  end
end
