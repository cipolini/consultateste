class CreateConsulta < ActiveRecord::Migration
  def self.up
    create_table :consulta do |t|
      t.integer :id_paciente
      t.string :Descricao
      t.string :Tipo_consulta
      t.string :Exames
      t.string :Exame_fisico
      t.string :Cirurgia
      t.string :Diagnostico
      t.string :Convenio
      t.string :Tipo_plano
      t.datetime :Data_consulta
      t.string :Status
      t.integer :id_consulta
      t.integer :id_medico
      t.integer :id_systemUser

      t.timestamps
    end
  end

  def self.down
    drop_table :consulta
  end
end
